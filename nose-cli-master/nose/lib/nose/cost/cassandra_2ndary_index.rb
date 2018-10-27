# frozen_string_literal: true

module NoSE
  module Cost
    # A cost model which estimates the number of requests to the backend
    class Cassandra2ndaryIndexCost < Cost
      include Subtype

      # Rough cost estimate as the number of requests made
      # @return [Numeric]
      def index_lookup_cost(step,aggregated_steps = nil)
        return nil if step.state.nil?
        rows = step.state.cardinality
        parts = step.state.hash_cardinality
        hoge =  @options[:index_cost]
        fuga = @options[:partition_cost]
        piyo =  @options[:row_cost]

        @options[:index_cost] + parts * @options[:partition_cost] +
          rows * @options[:row_cost]
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
