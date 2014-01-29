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
  class CardHold
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:card_holds]

    # Captures a valid Hold and returns a Debit representing the transfer of
    # funds from the buyer's Account to your Marketplace.
    #
    # @return [Debit]
    def capture(options={})
      options[:href] = self.debits.href
      debit = Balanced::Debit.new(options)
      debit.save
      reload
      debit
    end

    def unstore
      destroy
    end
    alias_method :delete, :unstore

  end
end

