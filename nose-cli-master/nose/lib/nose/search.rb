# frozen_string_literal: true

require_relative 'search/constraints'
require_relative 'search/problem'
require_relative 'search/results'

require 'logging'
require 'ostruct'
require 'tempfile'

module NoSE
  # ILP construction and schema search
  module Search
    # Searches for the optimal indices for a given workload
    class Search
      def initialize(workload, cost_model, objective = Objective::COST,
                     by_id_graph = false)
        @logger = Logging.logger['nose::search']
        @workload = workload
        @cost_model = cost_model
        @objective = objective
        @by_id_graph = by_id_graph

        # For now we only support optimization based on cost when grouping by
        # ID graphs, but support for other objectives is still feasible
        fail 'Only cost-based optimization allowed when using ID graphs' \
          if @by_id_graph && objective != Objective::COST
      end

      # Search for optimal indices using an ILP which searches for
      # non-overlapping indices
      # @return [Results]
      def search_overlap(indexes, max_space = Float::INFINITY)
        return if indexes.empty?

        # Get the costs of all queries and updates
        query_weights = combine_query_weights indexes
        costs, trees = query_costs query_weights, indexes #yusuke ここで渡しているindexesまではSIが含まれているが、costsにはほとんどSIが含まれていない
        update_costs, update_plans = update_costs trees, indexes

        log_search_start costs, query_weights

        solver_params = {
          max_space: max_space,
          costs: costs, #yusuke costsは{query=>query_cost}のhash
          update_costs: update_costs,
          cost_model: @cost_model,
          by_id_graph: @by_id_graph
        }

        #show_trees(trees) #yusuke 木の内容を表示

        search_result query_weights, indexes, solver_params, trees,
                      update_plans
      end

      private

      #yusuke 木の形でquery planを表示
      def show_trees(trees)
        trees.each do |tree|
          p tree
        end
      end

      # Combine the weights of queries and statements
      # @return [void]
      def combine_query_weights(indexes)
        indexes = indexes.map(&:to_id_graph).uniq if @by_id_graph
        query_weights = Hash[@workload.support_queries(indexes).map do |query|
          [query, @workload.statement_weights[query.statement]]
        end]
        query_weights.merge!(@workload.statement_weights.select do |stmt, _|
          stmt.is_a? Query
        end.to_h)

        query_weights
      end

      # Produce a useful log message before starting the search
      # @return [void]
      def log_search_start(costs, query_weights)
        @logger.debug do
          "Costs: \n" + pp_s(costs) + "\n" \
            "Search with queries:\n" + \
            query_weights.each_key.map.with_index do |query, i|
              "#{i} #{query.inspect}"
            end.join("\n")
        end
      end

      # Run the solver and get the results of search
      # @return [Results]
      def search_result(query_weights, indexes, solver_params, trees,
                        update_plans) #yusuke indexesは呼び出し元のenumerated_indexes
        # Solve the LP using MIPPeR
        result = solve_mipper query_weights.keys, indexes, **solver_params

        result.workload = @workload
        result.plans_from_trees trees #yusuke この中でresult.plansが追加されてる
        result.update_base_cf_key
        result.cost_model = @cost_model #yusuke この代入処理をcost_modelの代入演算子をoverrideしている都合上代入時にcostの再計算が走っているが、これはresult.cost_modelに代入する都合上起こっているものであり、ここで再計算する意図は元々ないものとして変更を進める


        # Select the relevant update plans
        update_plans = update_plans.values.flatten(1).select do |plan|
          result.indexes.include? plan.index
        end
        update_plans.each do |plan|
          plan.select_query_plans(&result.method(:select_plan))
        end
        result.update_plans = update_plans

        result.validate

        result
      end

      # Select the plans to use for a given set of indexes
      # @return [Array<Plans::QueryPlan>]
      def select_plans(trees, indexes)
        trees.map do |tree|
          # Exclude support queries since they will be in update plans
          query = tree.query
          next if query.is_a?(SupportQuery)

          # Select the exact plan to use for these indexes
          tree.select_using_indexes(indexes).min_by(&:cost)
        end.compact
      end

      #yusuke ここでsolverを使って解いてるみたい
      # Solve the index selection problem using MIPPeR
      # @return [Results]
      def solve_mipper(queries, indexes, data)
        # Construct and solve the ILP
        problem = Problem.new queries, @workload.updates, data, @objective
        problem.solve

      #  hoge = Hash.new { |h, k| h[k] = Set.new }
      #  problem.query_vars.each do |index, query_vars|
      #    query_vars.each do |query, var|
      #      next unless var.value #yusuke おそらくここで最適化の結果使用しないことになったものを蹴っている.Mipper.Variable.valueで定義されていて、最適化の結果弾くものはvalue==0.0で弾くことができるみたい.SIを使用するものは全てvar.value==0.0になっているっぽい。
      #      if hoge[query].empty?
      #        hoge[query] = Set.new
      #      end
      #      hoge[query].add index #yusuke query_indexがqueryとそれに対応するindexを紐付けているっぽい
      #    end
      #  end
      #  hoge

        # We won't get here if there's no valdi solution
        @logger.debug 'Found solution with total cost ' \
                      "#{problem.objective_value}"

        # Return the selected indices
        selected_indexes = problem.selected_indexes

        @logger.debug do
          "Selected indexes:\n" + selected_indexes.map do |index|
            "#{indexes.index index} #{index.inspect}"
          end.join("\n")
        end

        problem.result
      end

      # Produce the cost of updates in the workload
      def update_costs(trees, indexes)
        planner = Plans::UpdatePlanner.new @workload.model, trees, @cost_model,
                                           @by_id_graph
        update_costs = Hash.new { |h, k| h[k] = {} }
        update_plans = Hash.new { |h, k| h[k] = [] }
        @workload.statements.each do |statement|
          next if statement.is_a? Query

          populate_update_costs planner, statement, indexes,
                                update_costs, update_plans
        end

        [update_costs, update_plans]
      end

      # Populate the cost of all necessary plans for the given satement
      # @return [void]
      def populate_update_costs(planner, statement, indexes,
                                update_costs, update_plans)
        planner.find_plans_for_update(statement, indexes).each do |plan|
          weight = @workload.statement_weights[statement]
          update_costs[statement][plan.index] = plan.update_cost * weight
          update_plans[statement] << plan
        end
      end

      # Get the cost of using each index for each query in a workload
      def query_costs(query_weights, indexes)
        planner = Plans::QueryPlanner.new @workload, indexes, @cost_model

        results = Parallel.map(query_weights) do |query, weight|
          query_cost planner, query, weight
        end
        costs = Hash[query_weights.each_key.map.with_index do |query, q|
          [query, results[q].first] #yusuke results[q].firstはquery_cost
        end]

        [costs, results.map(&:last)] #yusuke results[q].lastはtree。
      end

      # Get the cost for indices for an individual query
      def query_cost(planner, query, weight)
        query_costs = {}

        tree = planner.find_plans_for_query(query) #yusuke このmethodがquery用の１つのtreeを返す
        tree.each do |plan| #yusuke query_plannerの中でeachおoverrideしているので、これでtree内の１つ１つのplanを取得することが出来ている。
          steps_by_index = [] #yusuke あるplanを構成する(stepの配列)を１つの要素として配列を構成する二次元配列
          plan.each do |step|
            if step.is_a? Plans::IndexLookupPlanStep #yusuke secondary index用にSecondaryIndexLookupPlanStepも宣言した方がいいかも
              steps_by_index.push [step]
            else
              steps_by_index.last.push step #yusuke indexlookup以外(sort,limit,filter)を最後に持ってくる.filterが最後なのは改善の余地があるかも？
            end
          end

          populate_query_costs query_costs, steps_by_index, weight, query, tree
        end

        [query_costs, tree]
      end

      #yusuke treeの中にsecondary indexを使用するstepが存在するかを取得する
      def is_include_secondary_index_step(tree)
        tree.each do |plan|
          plan.each do |step|
            if step.index.is_secondary_index
              return true
            end
          end
        end
        return false
      end

      # Store the costs and indexes for this plan in a nested hash
      # @return [void]
      def populate_query_costs(query_costs, steps_by_index, weight,
                               query, tree)
        # The first key is the query and the second is the index
        #
        # The value is a two-element array with the indices which are
        # jointly used to answer a step in the query plan along with
        # the cost of all plan steps for the part of the query graph
        steps_by_index.each do |steps|
          # Get the indexes for these plan steps
          index_step = steps.first #yusuke 各planの最初はIndexLookUp

          # Calculate the cost for just these steps in the plan
          cost = steps.sum_by(&:cost) * weight

          # Don't count the cost for sorting at the end
          sort_step = steps.find { |s| s.is_a? Plans::SortPlanStep }
          cost -= sort_step.cost * weight unless sort_step.nil?

          if query_costs.key? index_step.index
            current_cost = query_costs[index_step.index].last

            # We must always have the same cost #yusuke NoSEではあるindexが使われる場面によってcostが違うのはバグだと判定しているようだが、SIと組み合わせて通信コストまで考慮するとそうではない。
            #yusuke treeの中にSIを持つplanはどうしてもplanによって各indexのcostが変化してしまう。
            if (current_cost - cost).abs >= 10E-6 and !is_include_secondary_index_step tree
              index = index_step.index
              p query
              puts "Index #{index.key} does not have equivalent cost"
              puts "Current cost: #{current_cost}, discovered cost: #{cost}"

              puts "\nCurrent steps"
              query_costs[index_step.index].first.each { |s| p s }

              puts "\nDiscovered steps"
              steps.each { |s| p s }
              puts

              puts '======================================='
              tree.sort_by(&:cost).each do |plan|
                next unless plan.indexes.include?(index_step.index)
                plan.each do |step|
                  print(format('%.3f', step.cost).rjust(7) + ' ')
                  p step
                end
                puts "#{format('%.3f', plan.cost).rjust(7)} total"
                puts '======================================='
              end

              puts
              p tree

              fail
            end
          else
            # We either found a new plan or something cheaper
            query_costs[index_step.index] = [steps, cost]
          end
        end
      end
    end
  end
end
