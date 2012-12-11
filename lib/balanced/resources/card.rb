module Balanced
  # A card represents a source of funds for an Account. You may Hold or Debit
  # funds from the account associated with the Card.
  #
  class Card
    include Balanced::Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

    # Creates a Debit of funds from this Card to your Marketplace's escrow account.
    #
    # If +appears_on_statement_as+ is nil, then Balanced will use the
    # +domain_name+ property from your Marketplace.
    #
    # @return [Debit]
    def debit *args
      warn_on_positional args
      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      appears_on_statement_as = args[1] || options.fetch(:appears_on_statement_as) { nil }
      hold_uri = args[2] || options.fetch(:hold_uri) { nil }
      meta = args[3] || options.fetch(:meta) { nil }
      description = args[3] || options.fetch(:description) { nil }

      self.account.debit(
          :amount => amount,
          :appears_on_statement_as => appears_on_statement_as,
          :hold_uri => hold_uri,
          :meta => meta,
          :description => description,
          :source_uri => self.uri
      )
    end

    # Creates a Hold of funds from this Card to your Marketplace.
    #
    # @return [Hold]
    def hold *args
      warn_on_positional args
      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      meta = args[1] || options.fetch(:meta) { nil }

      self.account.hold(
          :amount => amount,
          :meta => meta,
          :source_uri => self.uri
      )
    end

    def invalidate
      self.is_valid = false
      save
    end

  end

end
