module Balanced
  # A Credit represents a transfer of funds from your Marketplace's
  # escrow account to a Merchant's Account within your Marketplace.
  #
  # By default, a Credit is sent to the most recently added funding
  # destination associated with an Account. You may specify a specific
  # funding source.
  #
  class Credit
    include Balanced::Resource

    # @param [Array] args
    # @option [String] :uri the uri of the credit, in the case of an update
    # @option [Hash] :bank_account
    # @option [Integer] :amount amount in cents
    # @option [String] :description a text description of the credit
    # @option [String] :appears_on_statement_as
    # @option [Hash] :meta
    # @option [String] :destination_uri the uri of the bank account to credit
    def initialize *args
      options = args.last.is_a?(Hash) ? args.pop : {}
      uri = options.fetch(:uri) { self.class.uri }
      bank_account = options.fetch(:bank_account) {}
      amount = args[0] || options.fetch(:amount) { }
      description = args[1] || options.fetch(:description) { nil }

      unless bank_account.nil?
        # Accountless bank account
        attributes = {
            :uri => uri,
            :amount => amount,
            :description => description,
            :bank_account => bank_account,
            :meta => nil
        }
      else
        meta = args[2] || options.fetch(:meta) { nil }
        destination_uri = args[3] || options.fetch(:destination_uri) { nil }
        appears_on_statement_as = args[4] || options.fetch(:appears_on_statement_as) { nil }
        attributes = {
            :uri => uri,
            :amount => amount,
            :meta => meta,
            :description => description,
            :destination_uri => destination_uri,
            :appears_on_statement_as => appears_on_statement_as
        }
      end

      Balanced::Utils.stringify_keys! attributes

      super attributes
    end

    def reverse *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      description = args[1] || options.fetch(:description) { nil }

      reversal = Reversal.new(
          :uri => self.reversals_uri,
          :credit_uri => self.uri,
          :amount => amount,
          :description => description
      )
      reversal.save
    end

  end
end
