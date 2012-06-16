module Balanced
  #
  #
  class Marketplace
    include Balanced::Resource

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
    # When you receive a merchant_uri from balanced, just pass it in:
    #
    # @example
    #   Account.create_merchant('bob@example.com', '/v1/TEST-MRxxxx')
    #
    # @return [Account]
    def create_merchant email_address, merchant, bank_account_uri=nil, name=nil, meta={}
      account_attributes = {
          :uri => self.accounts_uri,
          :email_address => email_address,
          :bank_account_uri => bank_account_uri,
          :name => name,
          :meta => meta,
      }

      if merchant.respond_to? :keys
        account_attributes[:merchant] = merchant
      else
        account_attributes[:merchant_uri] = merchant
      end

      account = Account.new account_attributes
      account.save
    end

  end

end

