module Balanced
  # A card represents a source of funds for an Account. You may Hold or Debit
  # funds from the account associated with the Card.
  #
  class Card < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Creates a Debit of funds from this Card to your Marketplace.
    #
    # If +appears_on_statement_as+ is nil, then Balanced will use the
    # +domain_name+ property from your Marketplace.
    #
    # @return [Debit]
    def debit amount=nil, appears_on_statement_as=nil, holds_uri=nil, meta={}, description=nil
      self.account.debit(amount, appears_on_statement_as, holds_uri, meta, description, self.uri)
    end

    # Creates a Hold of funds from this Card to your Marketplace.
    #
    # @return [Hold]
    def hold amount=nil, meta=nil
      self.account.hold(amount, meta, self.uri)
    end
  end

end
