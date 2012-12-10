module Balanced
  #
  #
  class Marketplace
    include Balanced::Resource

    @@marketplace_uri = nil

    # Returns an instance representing the marketplace associated with
    # the current API key.
    #
    # @return [Marketplace]
    def self.my_marketplace
      marketplace = Balanced::Merchant.me.marketplace
      @@marketplace_uri = marketplace.uri if marketplace
      marketplace
    end

    # @return [String, nil] the marketplace's URI
    def self.marketplace_uri
      @@marketplace_uri
    end

    def self.marketplace_exists?
      !!marketplace_uri
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

    # Create a buyer Account associated with this Marketplace.
    #
    # @return [Account]
    def create_buyer *args
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
      options = args.last.is_a?(Hash) ? args.pop : {}
      name = args[0] || options.fetch(:name) { }
      account_number = args[1] || options.fetch(:account_number) { nil }
      bank_code = args[2] || options.fetch(:bank_code) { nil }
      meta = args[3] || options.fetch(:meta) { nil }

      bank_account = BankAccount.new(
          :uri => self.bank_accounts_uri,
          :name => name,
          :account_number => account_number,
          :bank_code => bank_code,
          :meta => meta
      )
    end

  end

end
