require 'spec_helper'

describe Balanced::Resource, '.uri' do
  use_vcr_cassette

  describe "before the marketplace is configured" do
    it 'raises an exception' do
      Balanced::Marketplace.stub(:marketplace_uri) { nil }
      expect {
        Balanced::Account.uri
      }.to raise_error(Balanced::StandardError, "Balanced::Account is nested under a marketplace, which is not created or configured.")
    end
  end

  describe 'when the marketplace is configured' do
    it 'returns the resource uri corresponding to the resource name passed in' do
      Balanced::Marketplace.stub(:marketplace_uri) { '/v1/marketplaces/TEST-MPynogsPWE3xLMnLbEbuM0g' }
      Balanced::Account.uri.should == '/v1/marketplaces/TEST-MPynogsPWE3xLMnLbEbuM0g/accounts'
    end
  end
end

describe Balanced::Resource, 'loading a resource and generating methods from the response body' do
  use_vcr_cassette

  before do
    make_marketplace
    @account = Balanced::Account.new(email: 'user@example.com', name: 'John Doe').save
  end

  it 'generates a predicate method' do
    @account.name?.should be_true
  end

  it 'generates a getter method' do
    @account.name.should == 'John Doe'
  end

  it 'generates a setter' do
    @account.name = 'Bob Bobberson'
    @account.name.should == 'Bob Bobberson'
  end
end