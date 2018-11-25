# frozen_string_literal: true

module NoSE
  # Statement planning and abstract models of execution steps
  module Plans
    # A single step in a statement plan
    class PlanStep
      include Supertype

      attr_accessor :state, :parent
      attr_reader :children, :cost, :fields

      def initialize
        @children = Set.new
        @parent = nil
        @fields = Set.new
      end

      # :nocov:
      def to_color
        # Split on capital letters and remove the last two parts (PlanStep)
        self.class.name.split('::').last.split(/(?=[A-Z])/)[0..-3] \
          .map(&:downcase).join(' ').capitalize
      end
      # :nocov:

      # Set the children of the current plan step
      # @return [void]
      def children=(children)
        @children = children.to_set

        # Track the parent step of each step
        children.each do |child|
          child.instance_variable_set(:@parent, self)
          fields = child.instance_variable_get(:@fields) + self.fields
          child.instance_variable_set(:@fields, fields)
        end
      end

      # Mark the fields in this index as fetched
      # @return [void]
      def add_fields_from_index(index)
        @fields += index.all_fields
      end

      #yusuke #35 木の形式でquery planを表示
      def show_till_end(space_count)
        if self.is_a? IndexLookupPlanStep
          index = self.index
          if index.is_secondary_index
            print "   " * space_count +"key: " + "\e[31m#{index.key.to_s}\e[0m"+ " base_cf_key: " + index.base_cf_key.to_s+ + " " + index.hash_str + "\n"
          else
            print "   " * space_count +"key: " + index.key.to_s + " " + index.hash_str + "\n"
          end
        elsif self.is_a? RootPlanStep
          print "root: \e[33m #{self.state.query.text}\e[0m\n"#レイアウトを調整してbase_cf_keyが推薦されているか確認する
          space_count = 0
        else
          print "   " * space_count + "#{self.class}\n"
        end
        sons = @children
        return if sons.empty?

        sons.each{|son| son.show_till_end(space_count + 1)}
      end

      # Get the list of steps which led us here
      # If a cost model is not provided, statement plans using
      # this step cannot be evaluated on the basis of cost
      #
      # (this is to support PlanStep#parent_index which does not need cost)
      # @return [QueryPlan]
      def parent_steps(cost_model = nil)
        steps = nil

        if @parent.nil?
          steps = QueryPlan.new state.query, cost_model
        else
          steps = @parent.parent_steps cost_model
          steps << self
        end

        steps
      end

      # Find the closest index to this step
      # @return [PlanStep]
      def parent_index
        step = parent_steps.to_a.reverse_each.find do |parent_step|
          parent_step.is_a? IndexLookupPlanStep
        end
        step.index unless step.nil?
      end

      # Calculate the cost of executing this step in the plan
      # @return [Fixnum]
      def calculate_cost(cost_model)
        @cost = cost_model.method((subtype_name + '_cost').to_sym).call self
      end

      # Add the Subtype module to all step classes
      # @return [void]
      def self.inherited(child_class)
        child_class.send(:include, Subtype)
      end
    end

    # A dummy step used to inspect failed statement plans
    class PrunedPlanStep < PlanStep
      def state
        OpenStruct.new answered?: true
      end
    end

    # The root of a tree of statement plans used as a placeholder
    class RootPlanStep < PlanStep
      def initialize(state)
        super()
        @state = state
        @cost = 0
      end
    end

    # This superclass defines what is necessary for manually defined
    # and automatically generated plans to provide for execution
    class AbstractPlan
      attr_reader :group, :name, :weight

      # @abstract Subclasses should produce the steps for executing this query
      def steps
        fail NotImplementedError
      end

      # @abstract Subclasses should produce the fields selected by this plan
      def select_fields
        []
      end

      # @abstract Subclasses should produce the parameters
      # necessary for this plan
      def params
        fail NotImplementedError
      end
    end
  end
end

require_relative 'plans/filter'
require_relative 'plans/index_lookup'
require_relative 'plans/limit'
require_relative 'plans/sort'
require_relative 'plans/update'

require_relative 'plans/query_planner'
require_relative 'plans/update_planner'
require_relative 'plans/execution_plan'
