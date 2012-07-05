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
      soft_descriptor = args[1] || options.fetch(:appears_on_statement_as) { nil }
      meta = args[2] || options.fetch(:meta) { nil }
      description = args[3] || options.fetch(:description) { nil }

      self.account.debit(amount, soft_descriptor, meta, description, self.uri)
    end

    # Creates a Credit of funds from your Marketplace's escrow account to this Account.
    #
    # @return [Credit]
    def credit *args
      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      description = args[1] || options.fetch(:description) { nil }
      meta = args[2] || options.fetch(:meta) { nil }

      self.account.credit(amount, description, meta, self.uri)
    end

    def invalidate
      self.is_valid = false
      save
    end

  end
end
