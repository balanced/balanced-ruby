require "balanced"
require "pry"

describe Balanced::Account do
  before :all do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
  end

  describe "merchant" do
    before :all do
      @bank_account = Balanced::BankAccount.new(
        :account_number => "1234567890",
        :bank_code => "321174851",
        :name => "Jack Q Merchant"
      ).save
      @merchant_attributes = {
        :type => "person",
        :name => "Billy Jones",
        :street_address => "801 High St.",
        :postal_code => "94301",
        :country => "USA",
        :dob => "1842-01",
        :phone_number => "+16505551234",
      }
    end

    describe "new" do
      it do
        -> do
          @merchant = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "merchant@example.org",
            :merchant => @merchant_attributes,
            :bank_account_uri => @bank_account.uri,
            :name => "Jack Q Merchant"
          )
        end.should_not raise_error
      end
    end

    describe "#save" do
      before do
        @new_bank_account = Balanced::BankAccount.new(
          :account_number => "0987654321",
          :bank_code => "12345678",
          :name => "Jack Q Merchant"
        ).save
        @merchant = Balanced::Account.new(
          :uri => @marketplace.accounts_uri,
          :email_address => "merchant@example.org",
          :merchant => @merchant_attributes,
          :bank_account_uri => @bank_account.uri,
          :name => "Jack Q Merchant"
        )
      end
      it do
        -> { @merchant.save }.should_not raise_error
      end

    end

    describe "#add_bank_account" do
      before do
        @bank_account = Balanced::BankAccount.new(
          :account_number => "1234567890",
          :bank_code => "321174851",
          :name => "Jack Q Merchant"
        ).save

        @merchant = Balanced::Account.new(
          :uri => @marketplace.accounts_uri,
          :email_address => "merchant1@example.org",
          :merchant => @merchant_attributes,
          :bank_account_uri => @bank_account.uri,
          :name => "Jack Q Merchant"
        ).save

        @new_bank_account = Balanced::BankAccount.new(
          :account_number => "53434533",
          :bank_code => "12345678",
          :name => "Jack Q Merchant"
        ).save
      end

      it do
        -> { @merchant.add_bank_account(@new_bank_account) }.should_not raise_error
      end

    end
  end

  describe "buyer" do
    before :all do
      @card = Balanced::Card.new(
        :card_number => "5105105105105100",
        :expiration_month => "12",
        :expiration_year => "2015",
      ).save
      @buyer = @marketplace.create_buyer("buyer@example.org", @card.uri)
    end

    describe "#add_card" do
      before do
        @new_card = Balanced::Card.new(
          :card_number => "4111111111111111",
          :expiration_month => "1",
          :expiration_year => "2015",
        ).save
      end
      it do
        -> { @buyer.add_card(@new_card) }.should_not raise_error
      end
    end

    describe "#promote_to_merchant" do
      it do
        -> { @buyer.promote_to_merchant @merchant_attributes}.should_not raise_error
      end
    end
  end
end
