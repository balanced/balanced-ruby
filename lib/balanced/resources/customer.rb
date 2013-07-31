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

    # Attempts to find an existing customer by email
    #
    # *NOTE:* There is no unique constraint on email_address.
    #         Multiple customers with the same email may exist.
    #         Only one Customer is returned.
    #
    # @param [String] email An email of a customer
    # @return [Customer] if customer is found
    # @return [nil] if customer is not found
    def self.find_by_email email
      self.find(:first, :email => email)
    end
    
    def debit(options = {})
      amount = options[:amount]
      appears_on_statement_as = options[:appears_on_statement_as]
      hold_uri = options[:hold_uri]
      meta = options[:meta]
      description = options[:description]
      source_uri = options[:source_uri]
      on_behalf_of = options[:on_behalf_of] || options[:on_behalf_of_uri]

      if on_behalf_of
        if on_behalf_of.respond_to? :uri
          on_behalf_of = on_behalf_of.uri
        end
        if !on_behalf_of.is_a?(String)
          raise ArgumentError, 'The on_behalf_of parameter needs to be a customer URI'
        end
        if on_behalf_of == self.uri
          raise ArgumentError, 'The on_behalf_of parameter MAY NOT be the same account as the customer you are debiting!'
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

    def credit(options = {})
      options.merge!(:uri => self.credits_uri)
      Credit.new(options).save
    end

    # Associates the Card represented by 'card' with this Customer.
    #
    # @return [Customer]

    def add_card(card)
      card.save if card.kind_of?(Balanced::Card) && card.hash.nil?
      self.card_uri = Balanced::Utils.extract_uri_from_object(card)
      save
    end

    # Associates the BankAccount represented by bank_account with this
    # Customer.
    #
    # @return [Customer]
    def add_bank_account(bank_account)
      if bank_account.kind_of?(Balanced::BankAccount) && bank_account.fingerprint.nil?
        bank_account.save
      end
      self.bank_account_uri = Balanced::Utils.extract_uri_from_object(bank_account)
      save
    end

    def active_card
      pager = Pager.new(
        self.cards_uri,
        :is_active => true,
        :sort => 'created_at,desc',
        :limit => 1)
      pager.first
    end

    def active_bank_account
      pager = Pager.new(
        self.bank_accounts_uri,
        :is_active => true,
        :sort => 'created_at,desc',
        :limit => 1)
      pager.first
    end

  end
end
