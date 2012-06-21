module Balanced
  # A BankAccount is both a source, and a destination of, funds. You may
  # create Debits and Credits to and from, this funding source.
  #
  # *NOTE:* The BankAccount resource does not support creating a Hold.
  #
  class BankAccount
    include Balanced::Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Creates a Debit of funds from this BankAccount to your Marketplace's escrow account.
    #
    # @param [String] appears_on_statement_as If nil then Balanced will use
    #    the +domain_name+ property from your Marketplace.
    # @return [Debit]
    def debit amount, appears_on_statement_as=nil, meta={}, description=nil
      self.account.debit(amount, appears_on_statement_as, meta, description, self.uri)
    end

    # Creates a Credit of funds from your Marketplace's escrow account to this Account.
    #
    # @return [Credit]
    def credit amount, description=nil, meta={}
      self.account.credit(amount, description, meta, self.uri)
    end
  end
end
