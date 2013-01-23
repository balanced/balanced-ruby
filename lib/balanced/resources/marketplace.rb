module Balanced
  #
  #
  class Marketplace
    include Balanced::Resource

    @@marketplace_uri = nil

    class << self

      # Returns an instance representing the marketplace associated with
      # the current API key.
      #
      # @return [Marketplace]
      def my_marketplace
        marketplace = Balanced::Merchant.me.marketplace
        @@marketplace_uri = marketplace.uri if marketplace
        marketplace
      end
      alias mine my_marketplace

      # @return [String, nil] the marketplace's URI
      def marketplace_uri
        if !@@marketplace_uri and Balanced.is_configured_with_api_key?
          begin
            mine
          rescue Balanced::Error
            # do nothing..
          end
        end
        @@marketplace_uri
      end

      def marketplace_exists?
        !!marketplace_uri
      end

    end

    # @return [Marketplace]
    def save
      marketplace = super
      @@marketplace_uri = marketplace.uri
      marketplace
    end

    # Returns an instance representing the marketplace associated with
    # the current API key.
    #
    # @return [Marketplace]
    def my_marketplace
      self.class.my_marketplace
    end
    alias mine my_marketplace

    # Create an Account associated with this Marketplace. This account
    # will have no roles associated with it.
    #
    # @return [Account]
    def create_account options={}
      email_address = options.fetch(:email_address) { nil }
      name = options.fetch(:name) { nil }
      meta = options.fetch(:meta) { nil }

      account_attributes = {
          :uri => self.accounts_uri,
          :email_address => email_address,
          :name => name,
          :meta => meta
      }

      account = Account.new account_attributes
      account.save
    end


    # Create a buyer Account associated with this Marketplace.
    #
    # @return [Account]
    def create_buyer *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      email_address = args[0] || options.fetch(:email_address) { nil }
      card = args[1] || options.fetch(:card_uri) { options.fetch(:card) { nil} }
      name = args[2] || options.fetch(:name) { nil }
      meta = args[3] || options.fetch(:meta) { nil }

      account_attributes = {
          :uri => self.accounts_uri,
          :email_address => email_address,
          :name => name,
          :meta => meta,
      }

      if card.respond_to? :keys
        account_attributes[:card] = card
      else
        account_attributes[:card_uri] = card
      end

      account = Account.new account_attributes
      account.save
    end

    # Creates a Merchant Account associated with this Marketplace.
    #
    # This method may return 300 if you have not supplied enough information
    # for Balanced to identify the Merchant. You may re-submit the request
    # with more information, or redirect the Merchant to the supplied url
    # so they may manually sign up.
    #
    # When you receive a merchant_uri from balanced, just pass it in:
    #
    # @example
    #   Account.create_merchant('bob@example.com', '/v1/TEST-MRxxxx')
    #
    # @return [Account]
    def create_merchant *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      email_address = args[0] || options.fetch(:email_address) { nil }
      merchant = args[1] || options.fetch(:merchant) { nil }
      bank_account_uri = args[2] || options.fetch(:bank_account_uri) { nil }
      name = args[3] || options.fetch(:name) { nil }
      meta = args[4] || options.fetch(:meta) { nil }

      account_attributes = {
          :uri => self.accounts_uri,
          :email_address => email_address,
          :bank_account_uri => bank_account_uri,
          :name => name,
          :meta => meta
      }

      if merchant.respond_to? :keys
        account_attributes[:merchant] = merchant
      else
        account_attributes[:merchant_uri] = merchant
      end

      account = Account.new account_attributes
      account.save
    end

    # Creates a BankAccount object tied to this marketplace, for use with
    # accounts
    #
    # @return [BankAccount]
    def create_bank_account *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      name = args[0] || options.fetch(:name) { }
      account_number = args[1] || options.fetch(:account_number) { nil }
      bank_code = args[2] || options.fetch(:bank_code) {
        options.fetch(:routing_number) {
          nil
        }
      }
      meta = args[3] || options.fetch(:meta) { nil }

      bank_account = BankAccount.new(
          :uri => self.bank_accounts_uri,
          :name => name,
          :account_number => account_number,
          :bank_code => bank_code,
          :meta => meta
      )

      bank_account.save
    end

    # Creates a Card object tied to this marketplace, for use with
    # accounts
    #
    # @return [Card]
    def create_card *args
      warn_on_positional args

      options = args.last.is_a?(Hash) ? args.pop : {}
      card_number = args[0] || options.fetch(:card_number) { nil }
      expiration_month = args[1] || options.fetch(:expiration_month) { nil }
      expiration_year = args[2] || options.fetch(:expiration_year) { nil }
      security_code = args[3] || options.fetch(:expiration_year) { nil }
      postal_code = args[4] || options.fetch(:postal_code) { nil }
      name = args[5] || options.fetch(:name) { nil }
      phone_number = args[6] || options.fetch(:phone_number) { nil }
      street_address = args[7] || options.fetch(:street_address) { nil }
      city = args[8] || options.fetch(:city) { nil }
      country_code = args[9] || options.fetch(:country_code) { nil }
      meta = args[10] || options.fetch(:meta) { nil }

      card = Card.new(
          :uri => self.cards_uri,
          :card_number => card_number,
          :expiration_month => expiration_month,
          :expiration_year => expiration_year,
          :name => name,
          :security_code => security_code,
          :street_address => street_address,
          :city => city,
          :postal_code => postal_code,
          :country_code => country_code,
          :phone_number => phone_number,
          :meta => meta
      )
      card.save
    end

  end

end
