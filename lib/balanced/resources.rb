# Balanced - Online Marketplace Payments
#
# View {Documentation Online}[https://www.balancedpayments.com/docs/ruby]
#
module Balanced

  # Your ApiKey is used to authenticate when performing operations on the
  # Balanced API.
  #
  # *NOTE:* Never give out or expose your ApiKey. You may POST to this
  # endpoint to create new ApiKeys and then DELETE any old keys.
  #
  class ApiKey < Resource
  end

  # An Account represents a user within your Marketplace. An Account can have
  # two +roles+. If the Account has the +buyer+ role then you may create
  # Debits using this Account. If they have the +merchant+ role then you may
  # create Credits to transfer funds to this Account.
  #
  class Account < Resource

    attr_writer :bank_account_uri, :card_uri, :merchant

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Returns a new Debit that represents a flow of money from this
    # Account to your Marketplace.
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

  #
  #
  class Merchant < Resource

    # Returns the Merchant associated with your Marketplace.
    #
    # @return [Merchant]
    def self.me
      # TODO: use query
      response = Balanced.get collection_path
      return nil if response.body.to_s.length.zero? or response.body['total'] == 0
      payload = response.body
      construct_from_response payload['items'][0]
    end

    # Returns the Merchant associated with your Marketplace.
    #
    # @return [Merchant]
    def me
      self.class.me
    end

  end

  #
  #
  class Marketplace < Resource

    # Returns an instance representing the marketplace associated with
    # the current API key.
    #
    # @return [Marketplace]
    def self.my_marketplace
      # TODO: use query
      response = Balanced.get collection_path
      return nil if response.body.to_s.length.zero? or response.body['total'] == 0
      payload = response.body
      construct_from_response payload['items'][0]
    end

    # Returns an instance representing the marketplace associated with
    # the current API key.
    #
    # @return [Marketplace]
    def my_marketplace
      self.class.my_marketplace
    end

    # Create a buyer Account associated with this Marketplace.
    #
    # @return [Account]
    def create_buyer email_address, card_uri, name=nil, meta={}
      account = Account.new(
        :uri => self.accounts_uri,
        :email_address => email_address,
        :card_uri => card_uri,
        :name => name,
        :meta => meta,
      )
      account.save
    end

    # Creates a Merchant Account associated with this Marketplace.
    #
    # This method may return 300 if you have not supplied enough information
    # for Balanced to identify the Merchant. You may re-submit the request
    # with more information, or redirect the Merchant to the supplied url
    # so they may manually sign up.
    #
    # @return [Account]
    def create_merchant email_address, merchant, bank_account_uri=nil, name=nil, meta={}
      account = Account.new(
        :uri => self.accounts_uri,
        :email_address => email_address,
        :merchant => merchant,
        :bank_account_uri => bank_account_uri,
        :name => name,
        :meta => meta,
      )
      account.save
    end

  end

  # A Hold is a reservation of funds on a funding source such as a Card. This
  # reservation is guaranteed until the +expires_at+ date. You may capture
  # the Hold at any time before then which will create a Debit and transfer
  # the funds to your Marketplace. If you do not capture the Hold it will
  # be marked as invalid which is represented by the +is_void+ field being
  # set to +true+.
  #
  # By default a Hold is created using the most recently added funding source
  # on the Account. You may specify a specific funding source such as a Card
  # or BankAccount uri.
  #
  class Hold < Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Cancels an active Hold.
    #
    def void
      @is_void = true
      save
    end

    # Captures a valid Hold and returns a Debit representing the transfer of
    # funds from the buyer's Account to your Marketplace.
    #
    # @return [Debit]
    def capture amount=nil, appears_on_statement_as=nil, meta={}, description=nil
      amount ||= self.amount
      self.account.debit(amount, appears_on_statement_as, self.uri, meta, description)
    end

  end

  # A Debit represents a transfer of funds from a buyer's Account to your
  # Marketplace.
  #
  # A Debit may be created directly, or it will be created as a side-effect
  # of capturing a Hold. If you create a Debit directly it will implicitly
  # create the associated Hold if the funding source supports this.
  #
  # If no Hold is specified the Debit will by default be created using the
  # most recently added funding source associated with the Account. You
  # cannot change the funding source between creating a Hold and capturing
  # it.
  #
  class Debit < Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Refunds this Debit. If no amount is specified it will refund the entire
    # amount of the Debit, you may create many Refunds up to the sum total
    # of the original Debit's amount.
    #
    # @return [Refund]
    def refund amount=nil, description=nil
      refund = Refund.new(
          :uri => self.refunds_uri,
          :debit_uri => self.uri,
          :amount => amount,
          :description => description,
      )
      refund.save
    end

  end

  # A Credit represents a transfer of funds from your Marketplace to a
  # Merchant's Account within your Marketplace.
  #
  # By default, a Credit is sent to the most recently added funding
  # destination associated with an Account. You may specify a specific
  # funding source.
  #
  class Credit < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

  end

  # A Refund represents a reversal of funds from a Debit. A Debit can have
  # many Refunds associated with it up to the total amount of the original
  # Debit. Funds are returned to your Marketplace's Merchant Account
  # proportional to the amoun of the Refund.
  #
  class Refund < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

  end

  # Any transfer, or potential transfer of, funds from or to, your
  # Marketplace. E.g. a Credit, Debit, Refund, or Hold.
  #
  class Transaction < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

  end

  # A card represents a source of funds for an Account. You may Hold or Debit
  # funds from the account associated with the Card.
  #
  class Card < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Creates a Debit of funds from this Card to your Marketplace.
    #
    # If +appears_on_statement_as+ is nil, then Balanced will use the
    # +domain_name+ property from your Marketplace.
    #
    # @return [Debit]
    def debit amount=nil, appears_on_statement_as=nil, holds_uri=nil, meta={}, description=nil
      self.account.debit(amount, appears_on_statement_as, holds_uri, meta, description, self.uri)
    end

    # Creates a Hold of funds from this Card to your Marketplace.
    #
    # @return [Hold]
    def hold amount=nil, meta=nil
      self.account.hold(amount, meta, self.uri)
    end
  end

  # A BankAccount is both a source, and a destination of, funds. You may
  # create Debits and Credits to and from, this funding source.
  #
  # *NOTE:* The BankAccount resource does not support creating a Hold.
  #
  class BankAccount < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    # Creates a Debit of funds from this BankAccount to your Marketplace.
    #
    # @param [String] appears_on_statement_as If nil then Balanced will use
    #    the +domain_name+ property from your Marketplace.
    # @return [Debit]
    def debit amount, appears_on_statement_as=nil, meta={}, description=nil
      self.account.debit(amount, appears_on_statement_as, meta, description, self.uri)
    end

    # Creates a Credit of funds from your Marketplace to this Account.
    #
    # @return [Credit]
    def credit amount, description=nil, meta={}
      self.account.credit(amount, description, meta, self.uri)
    end
  end

end
