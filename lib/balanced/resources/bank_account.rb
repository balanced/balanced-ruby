module Balanced
  # A BankAccount is both a source, and a destination of, funds. You may
  # create Debits and Credits to and from, this funding source.
  #
  # *NOTE:* The BankAccount resource does not support creating a Hold.
  #
  class BankAccount
    include Balanced::Resource

    def self.has_account?
      self.respond_to?('account') && !self.account.nil?
    end

    def self.uri
      # Override the default nesting -- bank accounts can be toplevel now
      if !self.has_account?
         self.collection_path
      else
         self.class.uri
      end
    end

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

    # Creates a Debit of funds from this BankAccount to your Marketplace's escrow account.
    #
    # @param [String] appears_on_statement_as If nil then Balanced will use
    #    the +domain_name+ property from your Marketplace.
    # @return [Debit]
    def debit *args
      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      appears_on_statement_as = args[1] || options.fetch(:appears_on_statement_as) { nil }
      meta = args[2] || options.fetch(:meta) { nil }
      description = args[3] || options.fetch(:description) { nil }

      self.account.debit(amount, appears_on_statement_as, meta, description, self.uri)
    end

    # Creates a Credit of funds from your Marketplace's escrow account to this
    # Account.
    #
    # @return [Credit]
    def credit *args
      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      description = args[1] || options.fetch(:description) { nil }
      if !self.class.has_account?
        Credit.new(
          :amount => amount,
          :description => description,
          :uri => self.credits_uri,
        ).save
      else
        meta = args[2] || options.fetch(:meta) { nil }
        appears_on_statement_as = args[3] || options.fetch(:appears_on_statement_as) { nil }
        destination_url = args[4] || options.fetch(:destination_uri) { self.uri }
        self.account.credit(amount, meta, description, destination_uri, appears_on_statement_as)
      end
    end

    def invalidate
      self.is_valid = false
      save
    end

  end
end
