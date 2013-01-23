module Balanced
  # A Debit represents a transfer of funds from a buyer's Account to your
  # Marketplace's escrow account.
  #
  # A Debit may be created directly, or it will be created as a side-effect
  # of capturing a Hold. If you create a Debit directly it will implicitly
  # create the associated Hold if the funding source supports this.
  #
  # If no Hold is specified the Debit will by default be created using the
  # most recently added funding source associated with the Account. You
  # cannot change the funding source between creating a Hold and capturing
  # it.
  #
  class Debit
    include Balanced::Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

    # Refunds this Debit. If no amount is specified it will refund the entire
    # amount of the Debit, you may create many Refunds up to the sum total
    # of the original Debit's amount.
    #
    # @return [Refund]
    def refund *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      description = args[1] || options.fetch(:description) { nil }

      refund = Refund.new(
          :uri => self.refunds_uri,
          :debit_uri => self.uri,
          :amount => amount,
          :description => description,
      )
      refund.save
    end

  end
end

