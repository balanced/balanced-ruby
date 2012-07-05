module Balanced
  class Merchant
    include Balanced::Resource

    # Returns the Merchant associated with your Marketplace.
    #
    # @return [Merchant]
    def self.me
      self.all.first
    end

    # Returns the Merchant associated with your Marketplace.
    #
    # @return [Merchant]
    def me
      self.class.me
    end

  end
end

