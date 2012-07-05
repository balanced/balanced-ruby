module Balanced
  # Any transfer, or potential transfer of, funds from or to, your
  # Marketplace. E.g. a Credit, Debit, Refund, or Hold.
  #
  class Transaction
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

