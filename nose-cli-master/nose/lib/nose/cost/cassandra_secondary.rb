# frozen_string_literal: true

module NoSE
  module Cost
    # A cost model which estimates the number of requests to the backend
    class CassandraSecondaryCost < Cost
      include Subtype

      # Rough cost estimate as the number of requests made
      # @return [Numeric]
      # yusuke 他のcost modelも見比べると非常にhintにできる
      # step.is_a? Plans::IndexLookupPlanStep == trueは常に成立する
      def index_lookup_cost(step)
        return nil if step.state.nil?
        rows = step.state.cardinality #yusuke RequestCountCostの実装から考えるとこれが論文のn
        parts = step.state.hash_cardinality #yusuke これは他のcost modelでは参照されていないが、step.state.cardinalityがnであることを考えるとこれがwか？
        partition_cost = @options[:partition_cost]
        row_cost = @options[:row_cost]
        joined_cf_cost = @options[:sole_cf_query_cost] * [rows,1].max #yusuke ヒットする件数の期待値が1件以下の時はその分siの時のcostが相対的に増加するのはおかしいので、1以下なら1とする。

        #yusuke SI単独でクエリに応答する場合、応答コストは増加する
        if step.is_a? Plans::IndexLookupPlanStep and step.index.is_secondary_index and step.state.answered? then
          return (@options[:index_cost] + parts * partition_cost + rows * row_cost) * (1 + (@options[:si_2_cf_query_cost] / @options[:sole_cf_query_cost]))
        end

        if step.is_a? Plans::IndexLookupPlanStep and step.index.is_secondary_index then
          row_cost *= (@options[:si_2_cf_query_cost] / joined_cf_cost)
        elsif step.parent.is_a? Plans::IndexLookupPlanStep and step.parent.index.is_secondary_index then
          partition_cost *= (@options[:si_2_cf_query_cost] / joined_cf_cost)
        end

        @options[:index_cost] + parts * partition_cost + rows * row_cost
        #まずはprimary keyよりもsasiを使用した方がlatencyが小さくなっている理由を確認。さすがにこれは間違いなはず。
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
