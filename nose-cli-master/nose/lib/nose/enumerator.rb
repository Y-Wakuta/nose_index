# frozen_string_literal: true

require 'logging'

module NoSE
  # Produces potential indices to be used in schemas
  class IndexEnumerator
    def initialize(workload)
      @logger = Logging.logger['nose::enumerator']

      @workload = workload
    end

    def set_options(options)
      @options = options
    end

    # Produce all possible indices for a given query
    # @return [Array<Index>]
    def indexes_for_query(query)
      @logger.debug "Enumerating indexes for query #{query.text}"

      range = if query.range_field.nil?
                query.order
              else
                [query.range_field] + query.order
              end

      eq = query.eq_fields.group_by(&:parent)
      eq.default_proc = ->(*) { [] }

      range = range.group_by(&:parent)
      range.default_proc = ->(*) { [] }

      query.graph.subgraphs.flat_map do |graph|
        indexes_for_graph graph, query.select, eq, range
      end.uniq << query.materialize_view
    end

    #yusuke query plan生成時にindexes_by_joinsからentityをキーとして次のstepで使用できる可能性のあるindexを取得しているが、siに含まれるfield以外のentityを持っているとquery plan生成時に問題が起きる
    def get_si_graph(fields, base_graph)
      si_graph = base_graph.dup
      used_entities = fields.to_a.map{|field| field.parent}
      si_graph.remove_nodes(base_graph.entities - used_entities)
      if si_graph.edges_empty? and si_graph.nodes.length > 1 #siに含まれないnodeを削除した結果edgeが無くなってしまう場合がある。その時は#39に書いたようにquery planで枝切りされる事になりそうだが元のindexのgraphを返して処理は続ける
        return base_graph
      end
      si_graph#yusuke さらにここでsi_graphのみが返るようにしても必ずしも問題が起きるわけではなく、secondary indexも使用されるようになる
    end

    #yusuke 引数で入力されたsiのbase_cfとして使用可能なcfを列挙する
    def get_additional_cf_by_si(si,indexes)
      indexes.select{|index| index.hash_fields == si.extra}.map do |cf|
        ex = cf.extra + si.hash_fields
        generate_index(cf.hash_fields,cf.order_fields,ex,cf.graph,base_cf_key: cf.key,base_si_key: si.key)
      end
    end

    #yusuke 引数で受け取ったindexを元にSIとSIの属性を抜いたりしたCFを列挙する。
    def get_secondary_indexes_by_indexes(base_cf_candidates,indexes)
      Parallel.map(base_cf_candidates) do |index|
        (index.order_fields.to_set  + index.extra).to_a.map do |ex_field|
          # hashフィールドの中に元テーブルのprimary keyが含まれていないといけないみたい。なぜこの制約があるのかを論文から確認する->nose2016のp185
          index.hash_fields.map do |hf|
            sole_si = generate_index([hf], [], [ex_field], get_si_graph([hf] + [ex_field],index.graph),base_cf_key: index.key) #yusuke CFを複数使う場合のみを考えるならpartition keyに対するSIのみで良いが、単独で応答するSIを考えるのであれば、これも残しておく
            id_si = nil
            id_si_additional_cf = nil
            ex_id_si = nil
            ex_id_si_additional_cf = nil

            if hf != ex_field.parent.id_field then
                id_si = generate_index([hf],[], [ex_field.parent.id_field],get_si_graph([hf] + [ex_field.parent.id_field],index.graph), base_cf_key: index.key) #yusuke entityをまたぐSIを作成
                id_si_additional_cf = generate_index(id_si.extra,index.order_fields + index.hash_fields.to_a,index.extra.to_a + id_si.hash_fields.to_a,index.graph)
            end

            if hf != hf.parent.id_field then
                ex_id_si =  generate_index([hf],[], [hf.parent.id_field],get_si_graph([hf] + [hf.parent.id_field],index.graph), base_cf_key: index.key)
                ex_id_si_additional_cf = generate_index(ex_id_si.extra,index.order_fields + index.hash_fields.to_a ,index.extra.to_a + ex_id_si.hash_fields.to_a,index.graph)
            end

            [sole_si,id_si,id_si_additional_cf,ex_id_si,ex_id_si_additional_cf].flatten.select{|si| !si.nil? and !si.extra.empty?}
          end
        end
      end.flatten.uniq
    end

    # Produce all possible indices for a given workload
    #yusuke secondary indexを足すならここのsupportクエリのような感じになりそう
    # @return [Set<Index>]
    def indexes_for_workload(additional_indexes = [], by_id_graph = false)
      queries = @workload.queries
      base_cf_candidates = []
      indexes = queries.map do |query|
        base_cfs = indexes_for_query(query).to_a #yusuke このbase_cfsをfield数とかで部分的にだけ使用すると、
        print(query.text," :-> ",base_cfs.count,"\n")
        base_cf_candidates += base_cfs.sort_by { |index | index.all_fields.length }.reverse.take(3) #yusuke #46 queryに単独で応答するcfを探したい。今はひとまず一番field数の多いものがそうだろうということで対処
        base_cfs
      end.inject(additional_indexes, &:+)

      # Add indexes generated for support queries
      supporting = support_indexes indexes, by_id_graph
      supporting += support_indexes supporting, by_id_graph
      indexes += supporting
      base_cf_candidates += supporting

      # Deduplicate indexes, combine them and deduplicate again
      indexes.uniq!
      combine_indexes indexes
      indexes.uniq!

      if @options[:secondary] then
      #ここでsecondary indexを取得できるようにする
        indexes += get_secondary_indexes_by_indexes(base_cf_candidates,indexes)
        indexes.uniq!
      end

      @logger.debug do
        "Indexes for workload:\n" + indexes.map.with_index do |index, i|
          "#{i} #{index.inspect}"
        end.join("\n")
      end

      indexes
    end

    private

    # Produce the indexes necessary for support queries for these indexes
    # @return [Array<Index>]
    def support_indexes(indexes, by_id_graph)
      # If indexes are grouped by ID graph, convert them before updating
      # since other updates will be managed automatically by index maintenance
      indexes = indexes.map(&:to_id_graph).uniq if by_id_graph

      # Collect all possible support queries
      queries = indexes.flat_map do |index|
        @workload.updates.flat_map do |update|
          update.support_queries(index)
        end
      end

      # Enumerate indexes for each support query
      queries.uniq!
      queries.flat_map do |query|
        indexes_for_query(query).to_a
      end
    end

    #yusuke 複数のindexから１つのindexを生成するという点において,(１つのindexから複数を生成するsecondary indexとは逆だが、参考にできそう　)
    # Combine the data of indices based on matching hash fields
    def combine_indexes(indexes)
      no_order_indexes = indexes.select do |index|
        index.order_fields.empty? && !index.is_secondary_index #yusuke secondary indexは他のindexと結合させる必要がないため、ここではじく
      end
      no_order_indexes = no_order_indexes.group_by do |index|
        [index.hash_fields, index.graph]
      end

      no_order_indexes.each do |(hash_fields, graph), hash_indexes|
        extra_choices = hash_indexes.map(&:extra).uniq

        # XXX More combos?
        combos = extra_choices.combination(2)

        combos.map do |combo|
          indexes << Index.new(hash_fields, [], combo.inject(Set.new, &:+),
                               graph)
          @logger.debug "Enumerated combined index #{indexes.last.inspect}"
        end
      end
    end

    # Get all possible choices of fields to use for equality
    # @return [Array<Array>]
    def eq_choices(graph, eq)
      entity_choices = graph.entities.flat_map do |entity|
        # Get the fields for the entity and add in the IDs
        entity_fields = eq[entity] << entity.id_field
        entity_fields.uniq!
        1.upto(entity_fields.count).flat_map do |n|
          entity_fields.permutation(n).to_a
        end
      end

      2.upto(graph.entities.length).flat_map do |n|
        entity_choices.permutation(n).map(&:flatten).to_a
      end + entity_choices
    end

    # Get fields which should be included in an index for the given graph
    # @return [Array<Array>]
    def extra_choices(graph, select, eq, range)
      choices = eq.values + range.values << select.to_a

      choices.each do |choice|
        choice.select { |field| graph.entities.include?(field.parent) }
      end

      choices.reject(&:empty?) << []
    end

    # Get all possible indices which jump a given piece of a query graph
    # @return [Array<Index>]
    def indexes_for_graph(graph, select, eq, range)
      eq_choices = eq_choices graph, eq
      range_fields = graph.entities.map { |entity| range[entity] }.reduce(&:+)
      range_fields.uniq!
      order_choices = range_fields.prefixes.flat_map do |fields|
        fields.permutation.to_a
      end.uniq << []
      extra_choices = extra_choices graph, select, eq, range
      extra_choices = 1.upto(extra_choices.length).flat_map do |n|
        extra_choices.combination(n).map(&:flatten).map(&:uniq)
      end.uniq

      # Generate all possible indices based on the field choices
      choices = eq_choices.product(extra_choices)
      indexes = choices.map! do |index, extra|
        indexes = []

        order_choices.each do |order|
          # Append the primary key of the entities in the graph if needed
          order += graph.entities.sort_by(&:name).map(&:id_field) -
                   (index + order)

          # Partition into the ordering portion
          index.partitions.each do |index_prefix, order_prefix|
            hash_fields = index_prefix.take_while do |field|
              field.parent == index.first.parent
            end
            order_fields = index_prefix[hash_fields.length..-1] + \
                           order_prefix + order
            extra_fields = extra - hash_fields - order_fields
            next if order_fields.empty? && extra_fields.empty?

            new_index = generate_index hash_fields, order_fields, extra_fields,
                                       graph
            indexes << new_index unless new_index.nil?
          end
        end

        indexes
      end.inject([], &:+)
      indexes.flatten!

      indexes
    end

    # Generate a new index and ignore if invalid
    # @return [Index]
    def generate_index(hash, order, extra, graph,base_cf_key: nil,base_si_key: nil)
      begin
        index = Index.new hash, order.uniq, extra, graph,base_cf_key: base_cf_key,base_si_key: base_si_key
        @logger.debug { "Enumerated #{index.inspect}" }
      rescue InvalidIndexException
        # This combination of fields is not valid, that's ok
        index = nil
      end

      index
    end
  end
end
