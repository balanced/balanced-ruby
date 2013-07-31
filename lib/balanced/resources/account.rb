module Balanced
  # An Account represents a user within your Marketplace. An Account can have
  # two +roles+. If the Account has the +buyer+ role then you may create
  # Debits using this Account. If they have the +merchant+ role then you may
  # create Credits to transfer funds to this Account.
  #
  class Account
    include Balanced::Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end

    # Attempts to find an existing buyer account by email
    #
    # @param [String] email An email of an account
    # @return [Account] if account is found
    # @return [nil] if account is not found
    def self.find_by_email email
      self.find(:first, :email_address => email)
    end

    # Returns a new Debit that represents a flow of money from this
    # Account to your Marketplace's escrow account.
    #
    # @return [Debit]
    def debit *args
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

    # Returns a new Hold that represents a reservation of money on this
    # Account which can be transferred via a Debit to your Marketplace
    # up to 7 days later.
    #
    # @param [String] source_uri A specific funding source such as a Card
    #    associated with this account. If not specified the most recently
    #    added Card is used.
    # @return [Hold] A Hold representing the reservation of funds from
    #    this Account to your Marketplace.
    def hold *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || options.fetch(:amount) { }
      meta = args[1] || options.fetch(:meta) { nil }
      source_uri = args[2] || options.fetch(:source_uri) { nil }

      hold = Hold.new(
          :uri => self.holds_uri,
          :amount => amount,
          :meta => meta,
          :source_uri => source_uri,
      )
      hold.save
    end

    # Returns a new Credit representing a transfer of funds from your
    # Marketplace to this Account.
    #
    # @param [String] destination_uri A specific funding destination such as
    #    a BankAccount already associated with this account.
    # @return [Credit] A Credit representing the transfer of funds from
    #    your Marketplace to this Account.
    def credit *args
      warn_on_positional args

      if args.last.is_a? Hash
        args.last.merge! uri: self.credits_uri
      else
        args << { uri: self.credits_uri }
      end
      Credit.new(*args).save
    end

    # Associates the Card represented by +card_uri+ with this Account.
    #
    # @return [Account]
    def add_card(card)
      card.save if card.kind_of?(Balanced::Card) && card.hash.nil?
      self.card_uri = Balanced::Utils.extract_uri_from_object(card)
      save
    end

    # Associates the BankAccount represented by +bank_account_uri+ with this
    # Account.
    #
    # @return [Account]
    def add_bank_account(bank_account)
      if bank_account.kind_of?(Balanced::BankAccount) && bank_account.fingerprint.nil?
        bank_account.save
      end
      self.bank_account_uri = Balanced::Utils.extract_uri_from_object(bank_account)
      save
    end

    # Adds the role Merchant to this Account.
    #
    # The merchant data for a *person* should look like:
    #
    #    {
    #      :type => "person",
    #      :name => "William James",        # Legal name
    #      :street_address => "167 West 74th Street",
    #      :postal_code => "10023",
    #      :country_code => "USA",          # ISO 3166-1 alpha-3
    #      :dob => "1842-01",
    #      :phone_number => "+16505551234"
    #    }
    #
    # For a *business*, the payload should look like:
    #
    #    {
    #      :name => "Levain Bakery",
    #      :tax_id => "253912384",          # Optional
    #      :street_address => "167 West 74th Street",
    #      :postal_code => "10023",
    #      :phone_number => "+16505551234",
    #      :country_code => "USA",          # ISO 3166-1 alpha-3
    #      :person => {
    #         :name => "William James",     # Legal name
    #         :tax_id => "393483992",       # Optional
    #         :street_address => "167 West 74th Street",  # Home address
    #         :postal_code => "10023",
    #         :dob => "1842-01-01",
    #         :phone_number => "+16505551234",
    #         :country_code => "USA"        # ISO 3166-1 alpha-3
    #       }
    #    }
    #
    def promote_to_merchant merchant
      if merchant.is_a?(String)
        self.merchant_uri = merchant
      else
        self.merchant = merchant
      end
      save
    end

  end
end
