require "spec_helper"

describe "ApiKey Resource" do
  before(:each) do
  end

  it "should create my api key and let me access the secret" do
    key = Balanced::ApiKey.new.save
    key.should_not eq(nil)
    # make sure my secret is there.
    key.secret.should_not eq(nil)
  end

  it "should construct the merchant sub resource as an instance of Balanced::Merchant" do
    key = Balanced::ApiKey.new.save
    (key.merchant.instance_of? Balanced::Merchant).should == true
  end


end
