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
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Attempts to find an existing buyer account by email
    #
    # @param [String] email An email of a buyer account
    # @return [Account] if buyer is found
    # @return [nil] if buyer is not found
    def self.find_by_email email
      self.find(:first, :email_address => email)
    end

    def save
      the_response = super
      if response.status == 300
        raise MoreInformationRequiredError, response
      end
      the_response
    end

    # Returns a new Debit that represents a flow of money from this
    # Account to your Marketplace's escrow account.
    #
    # @return [Debit]
    def debit (amount=nil,
        appears_on_statement_as=nil,
        hold_uri=nil,
        meta={},
        description=nil,
        source_uri=nil)
      debit = Debit.new(
          :uri => self.debits_uri,
          :amount => amount,
          :appears_on_statement_as => appears_on_statement_as,
          :hold_uri => hold_uri,
          :meta => meta,
          :description => description,
          :source_uri => source_uri,
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
    def hold amount, meta={}, source_uri=nil
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
    def credit amount, description=nil, meta={}, destination_uri=nil
      credit = Credit.new(
          :uri => self.credits_uri,
          :amount => amount,
          :meta => meta,
          :description => description,
          :destination_uri => destination_uri,
      )
      credit.save
    end

    # Associates the Card represented by +card_uri+ with this Account.
    #
    # @return [Card]
    def add_card card_uri
      self.card_uri = card_uri
      save
    end

    # Associates the BankAccount represented by +bank_account_uri+ with this
    # Account.
    #
    # @return [BankAccount]
    def add_bank_account bank_account_uri
      self.bank_account_uri = bank_account_uri
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
    def promote_to_merchant merchant_data
      self.merchant = merchant_data
      save
    end

  end
end
