# frozen_string_literal: true

module NoSE
  module Cost
    # A cost model which estimates the number of requests to the backend
    class CassandraSecondaryCost < Cost
      include Subtype

      #yusuke FieldSizeCostのindex_lookup_costの中身を抜き出してきた
      def get_size(step)
        # If we have an answer to the query, we only need
        # to fetch the data fields which are selected
        fields = step.index.all_fields
        fields &= step.state.query.select if step.state.answered?

        step.state.cardinality * fields.sum_by(&:size)
      end

      # Rough cost estimate as the number of requests made
      # @return [Numeric]
      # yusuke 他のcost modelも見比べると非常にhintにできる
      # step.is_a? Plans::IndexLookupPlanStep == trueは常に成立する
      def index_lookup_cost(step,aggregated_steps = nil)
        return nil if step.state.nil?
        rows = step.state.cardinality #yusuke RequestCountCostの実装から考えるとこれが論文のn
        parts = step.state.hash_cardinality #yusuke これは他のcost modelでは参照されていないが、step.state.cardinalityがnであることを考えるとこれがwか？
        client_network_cost =  @options[:client_network_cost]
        parent = step.parent
        #childがいるかどうかの判定はansweredで行う
        cost = @options[:index_cost] + parts * @options[:partition_cost] + rows * @options[:row_cost]

        if !parent.is_a? Plans::IndexLookupPlanStep #yusuke index_lookupにおいては一段階目
          cost += client_network_cost #yusuke client -> cassandra
          cost += client_network_cost * get_size(step) if !step.index.is_secondary_index #yusuke CF: cassandra -> client
        else #yusuke 二段目以降
          cost += client_network_cost if !parent.index.is_secondary_index#yusuke CF: client -> cassandra
          cost += client_network_cost * get_size(step) #yusuke cassandra -> client
        end

        cost
      end

      # Cost estimate as number of entities deleted
      def delete_cost(step)
        return nil if step.state.nil?
        step.state.cardinality * @options[:delete_cost]
      end

      # Cost estimate as number of entities inserted
      def insert_cost(step)
        return nil if step.state.nil?
        step.state.cardinality * @options[:insert_cost]
      end
    end
  end

end
