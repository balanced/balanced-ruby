module Balanced
  # A customer represents a business or person within your Marketplace. A
  # customer can have many funding instruments such as cards and bank accounts
  # associated to them.
  #
  class Customer
    include Balanced::Resource

    def self.uri
      # Override the default nesting
       self.collection_path
    end

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

    def debit(*args)
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { nil }
      appears_on_statement_as = args[1] || options.fetch(:appears_on_statement_as) { nil }
      hold_uri = args[2] || options.fetch(:hold_uri) { nil }
      meta = args[3] || options.fetch(:meta) { nil }
      description = args[4] || options.fetch(:description) { nil }
      source_uri = args[5] || options.fetch(:source_uri) { nil }
      on_behalf_of = args[6] || options.fetch(:on_behalf_of) { nil }

      if on_behalf_of
        if on_behalf_of.respond_to? :uri
          on_behalf_of = on_behalf_of.uri
        end
        if !on_behalf_of.is_a?(String)
          raise ArgumentError, 'The on_behalf_of parameter needs to be an account URI'
        end
        if on_behalf_of == self.uri
          raise ArgumentError, 'The on_behalf_of parameter MAY NOT be the same account as the account you are debiting!'
        end
      end

      debit = Debit.new(
          :uri => self.debits_uri,
          :amount => amount,
          :appears_on_statement_as => appears_on_statement_as,
          :hold_uri => hold_uri,
          :meta => meta,
          :description => description,
          :source_uri => source_uri,
          :on_behalf_of_uri => on_behalf_of,
      )
      debit.save
    end

    def credit(*args)
      warn_on_positional args

      if args.last.is_a? Hash
        args.last.merge! uri: self.credits_uri
      else
        args << { uri: self.credits_uri }
      end
      Credit.new(*args).save
    end

    # Associates the Card represented by 'card' with this Customer.
    #
    # @return [Card]
    def add_card(card)
      if card.is_a? String
        self.card_uri = card
      elsif card.respond_to? :uri
        self.card_uri = card.uri
      else
        self.card = card
      end
      save
    end

    # Associates the BankAccount represented by bank_account with this
    # Customer.
    #
    # @return [BankAccount]
    def add_bank_account(bank_account)
      if bank_account.is_a? String
        self.bank_account_uri = bank_account
      elsif bank_account.respond_to? :uri
        self.bank_account_uri = bank_account.uri
      else
        self.bank_account = bank_account
      end
      save
    end

    def active_card
      cards = self.cards.select do |card|
        card.is_valid
      end 
      cards ? cards.sort_by { |card| card.created_at }.last : nil
    end

    def active_bank_account
      bank_accounts = self.bank_accounts.select do |bank_account|
        bank_account.is_valid
      end 
      bank_accounts ? bank_accounts.sort_by { |b| b.created_at }.last : nil
    end

  end
end
