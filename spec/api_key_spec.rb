require "spec_helper"

describe "ApiKey Resource" do
  before(:each) do
    Balanced.stub(:send) { 
      mock(
        Faraday::Response, 
        body: 
          {
            merchant: {
              phone_number: "+16505551212", 
              city: "Nowhere", 
              marketplace: nil, 
              name: "William Henry Cavendish III", 
              email_address: "whc@example.org", 
              created_at: "2012-06-08T01:51:36.489382Z", 
              uri: "/v1/merchants/TEST-merchant_id", 
              accounts_uri: "/v1/merchants/TEST-merchant_id/accounts", 
              meta: {}, 
              postal_code: "90210", 
              country_code: "USA", 
              type: "person", 
              balance: 0, 
              api_keys_uri: "/v1/merchants/TEST-merchant_id/api_keys", 
              id: "TEST-merchant_id", 
              street_address: "123 Fake St"
            },
            secret: "some-secret", 
            meta: {},
            uri: "/v1/api_keys/api-key",
            id: "api-key"
          }
      )
    }
  end

  it "should create my api key and let me access the secret" do
    key = Balanced::ApiKey.new.save
    # make sure my secret is there.
    key.secret.should == "some-secret"
  end

  it "should construct the merchant sub resource as an instance of Balanced::Merchant" do
    key = Balanced::ApiKey.new.save
    (key.merchant.instance_of? Balanced::Merchant).should == true
  end
end
