module Balanced
  # A Refund represents a reversal of funds from a Debit. A Debit can have
  # many Refunds associated with it up to the total amount of the original
  # Debit. Funds are returned to your Marketplace's Merchant Account
  # proportional to the amount of the Refund.
  #
  class Refund
    include Balanced::Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

  end

end

