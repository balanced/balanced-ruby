module Balanced

  module HypermediaRegistry

    def self.included(base) # :nodoc:
      base.extend ClassMethods
    end

    module ClassMethods

      def define_hypermedia_types(types)
        @hypermedia_types = types.map! do |t|
          t.to_s
        end.sort!.freeze

        @hypermedia_types.each do |type|
          Balanced.hypermedia_registry[type] = self
        end
      end

      # @return [Array, nil] The list of hypermedia types this class is
      # mapped to for interacting with the resource.
      attr_reader :hypermedia_types
    end

  end

end