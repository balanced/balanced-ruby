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

end

