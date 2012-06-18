module Balanced
  # A Hold is a reservation of funds on a funding source such as a Card. This
  # reservation is guaranteed until the +expires_at+ date. You may capture
  # the Hold at any time before then which will create a Debit and transfer
  # the funds to your Marketplace. If you do not capture the Hold it will
  # be marked as invalid which is represented by the +is_void+ field being
  # set to +true+.
  #
  # By default a Hold is created using the most recently added funding source
  # on the Account. You may specify a specific funding source such as a Card
  # or BankAccount uri.
  #
  class Hold
    include Balanced::Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Cancels an active Hold.
    #
    def void
      self.is_void = true
      save
    end

    # Captures a valid Hold and returns a Debit representing the transfer of
    # funds from the buyer's Account to your Marketplace.
    #
    # @return [Debit]
    def capture amount=nil, appears_on_statement_as=nil, meta={}, description=nil
      amount ||= self.amount
      self.account.debit(amount, appears_on_statement_as, self.uri, meta, description)
    end

  end
end

