require 'spec_helper'


describe Balanced::Marketplace, :vcr do
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
  end

  describe 'marketplace', :vcr do
    it 'should be a Balanced::Marketplace' do
      @marketplace.should be_instance_of Balanced::Marketplace
    end

    it 'should conform to application/vnd.api+json' do
      @marketplace.id.should_not be_nil
      @marketplace.href.should_not be_nil
      @marketplace.links.should be_instance_of Hash
    end

    it '#href' do
      @marketplace.href.should match(/\/marketplaces\/TEST-MP\w{21,23}/)
    end

    it '#bank_accounts' do
      @marketplace.bank_accounts.should be_instance_of Balanced::Pager
      @marketplace.bank_accounts.href.should eql '/bank_accounts'
    end

    it '#owner_customer' do
      @marketplace.owner_customer.should be_instance_of Balanced::Customer
    end

    it '#meta' do
      @marketplace.meta.should be_instance_of Hash
    end

  end

end
