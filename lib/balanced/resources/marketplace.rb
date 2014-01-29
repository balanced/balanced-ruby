module Balanced
  #
  #
  class Marketplace
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:marketplaces]

    class << self

      # Returns an instance representing the marketplace associated with
      # the current API key.
      #
      # @return [Marketplace]
      def my_marketplace
        Balanced::Marketplace.where.first
      end

      alias mine my_marketplace

    end

    # Returns an instance representing the marketplace associated with
    # the current API key.
    #
    # @return [Marketplace]
    def my_marketplace
      self.class.my_marketplace
    end

    alias mine my_marketplace

  end

end
