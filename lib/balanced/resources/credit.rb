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

    def initialize *args
      options = args.last.is_a?(Hash) ? args.pop : {}
      uri = options.fetch(:uri) { self.class.uri }
      bank_account = options.fetch(:bank_account) {}
      amount = args[0] || options.fetch(:amount) { }
      description = args[1] || options.fetch(:description) { nil }

      unless bank_account.nil?
        # Accountless bank account
        attributes = {
            uri: uri,
            amount: amount,
            description: description,
            bank_account: bank_account,
            meta: nil
        }
      else
        meta = args[2] || options.fetch(:meta) { nil }
        destination_uri = args[3] || options.fetch(:destination_uri) { nil }
        appears_on_statement_as = args[4] || options.fetch(:appears_on_statement_as) { nil }
        attributes = {
            uri: uri,
            amount: amount,
            meta: meta,
            description: description,
            destination_uri: destination_uri,
            appears_on_statement_as: appears_on_statement_as
        }
      end

      Balanced::Utils.stringify_keys! attributes

      super attributes
    end
  end
end
