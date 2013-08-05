module Balanced
  # A BankAccount is both a source, and a destination of, funds. You may
  # create Debits and Credits to and from, this funding source.
  #
  # *NOTE:* The BankAccount resource does not support creating a Hold.
  #
  class BankAccount
    include Balanced::Resource

    def self.uri
      # Override the default nesting -- bank accounts can be top-level now
      # but they can also be nested under marketplaces, which is what we
      # want to default to unless explicitly set
       self.collection_path
    end

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

    def has_account?
      self.respond_to? 'account' and !self.account.nil?
    end

    # Creates a Debit of funds from this BankAccount to your Marketplace's escrow account.
    #
    # @param [String] appears_on_statement_as If nil then Balanced will use
    #    the +domain_name+ property from your Marketplace.
    # @return [Debit]
    def debit *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      appears_on_statement_as = args[1] || options.fetch(:appears_on_statement_as) { nil }
      meta = args[2] || options.fetch(:meta) { nil }
      description = args[3] || options.fetch(:description) { nil }

      self.account.debit(
          :amount => amount,
          :appears_on_statement_as => appears_on_statement_as,
          :meta => meta,
          :description => description,
          :source_uri => self.uri
      )
    end

    # Creates a Credit of funds from your Marketplace's escrow account to this
    # Account.
    #
    # @return [Credit]
    def credit *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      description = args[1] || options.fetch(:description) { nil }
      appears_on_statement_as = args[3] || options.fetch(:appears_on_statement_as) { nil }
      
      if self.has_account?
        meta = args[2] || options.fetch(:meta) { nil }
        destination_uri = args[4] || options.fetch(:destination_uri) { self.uri }
        credit = self.account.credit(
            :amount => amount,
            :meta => meta,
            :description => description,
            :destination_uri => destination_uri,
            :appears_on_statement_as => appears_on_statement_as
        )
      else
        credit = Credit.new(
            :uri => self.credits_uri,
            :amount => amount,
            :description => description,
            :appears_on_statement_as => appears_on_statement_as
        )
        credit.save
      end

      credit
    end

    def invalidate
      self.is_valid = false
      save
    end

    def verify
      Verification.new(
          'uri' => self.verifications_uri
      ).save
    end

  end

  class Verification
    include Balanced::Resource

    def confirm(amount_1, amount_2)
      self.amount_1 = amount_1
      self.amount_2 = amount_2
      save
    end
  end

end
