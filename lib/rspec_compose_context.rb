require "rspec_compose_context/version"

module RspecComposeContext
  def compose_context(*context_names, &block)
    m = context_names.inject(self) do |m, (context_name, *args)|
      m.module_eval do
        str = args.map(&:inspect).join(', ')
        str = "(#{str})" unless args.empty?
        context("#{context_name}#{str}") do
          include_context(context_name.to_s, *args)
        end
      end
    end
    m.module_eval &block if block_given?
  end
end

module RSpec
  module Core
    class ExampleGroup
      extend RspecComposeContext
    end
  end
end
