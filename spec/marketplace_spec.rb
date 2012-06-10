require "spec_helper"


describe Balanced::Marketplace do
  before :all do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    @bank_account = Balanced::BankAccount.new(
      :account_number => "1234567890",
      :bank_code => "321174851",
      :name => "Jack Q Merchant"
    ).save
    @merchant = @marketplace.create_merchant(
      "merchant@example.org",
      {
        :type => "person",
        :name => "Billy Jones",
        :street_address => "801 High St.",
        :postal_code => "94301",
        :country => "USA",
        :dob => "1842-01",
        :phone_number => "+16505551234",
      },
      @bank_account.uri,
      "Jack Q Merchant",
    )
  end

  describe "create_merchant" do
    describe "attributes" do
      describe "#id" do
        subject { @merchant.id }
        it { should_not be_nil }
        it { should_not be_empty }
      end
      describe "#roles" do
        subject { @merchant.roles }
        it { should include("merchant") }
      end
      describe "#email_address" do
        subject { @merchant.email_address }
        it { should eql "merchant@example.org" }
      end
      describe "#name" do
        subject { @merchant.name }
        it { should eql "Jack Q Merchant" }
      end
      describe "#created_at" do
        subject { @merchant.created_at }
        it { should_not be_nil }
        it { should_not be_empty }
      end
      describe "#uri" do
        subject { @merchant.uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*/ }
      end
      describe "#holds_uri" do
        subject { @merchant.holds_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/holds/ }
      end
      describe "#bank_accounts_uri" do
        subject { @merchant.bank_accounts_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/bank_accounts/ }
      end
      describe "#refunds_uri" do
        subject { @merchant.refunds_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/refunds/ }
      end
      describe "#debits_uri" do
        subject { @merchant.debits_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/debits/ }
      end
      describe "#transactions_uri" do
        subject { @merchant.transactions_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/transactions/ }
      end
      describe "#credits_uri" do
        subject { @merchant.credits_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/credits/ }
      end
      describe "#cards_uri" do
        subject { @merchant.cards_uri }
        it { should match /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/cards/ }
      end
    end
  end
end

