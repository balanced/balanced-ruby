require 'spec_helper'

describe Balanced::Customer, :vcr do
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
  end

  describe "Customer.uri", :vcr do

    context "when Api Key is configured properly", :vcr do
      before do
        api_key = Balanced::ApiKey.new.save
        Balanced.configure api_key.secret
        Balanced::Customer.new
      end

      it "matches the resource's uri structure" do
        uri = Balanced::Customer.uri
        uri.should_not be_nil
        uri.should match CUSTOMERS_URI_REGEX
      end
    end
  end

  describe "customer", :vcr do
    describe "#create", :vcr do
      before do
        @customer = @marketplace.create_customer(
          :name           => "Bill",
          :email          => "bill@bill.com",
          :business_name  => "Bill Inc.",
          :ssn_last4      => "1234",
          :address => {
            :line1 => "1234 1st Street",
            :city  => "San Francisco",
            :state => "CA"
        }
        ).save
      end
      it "should create a new customer" do
        @customer.should_not be_nil
      end
      it "should contain the correct attributes" do
        @customer.name.should eq("Bill")
        @customer.email.should eq("bill@bill.com")
        @customer.business_name.should eq("Bill Inc.")
      end
    end

    describe "#add_card using untokenized object", :vcr do
      before do
      @customer = @marketplace.create_customer
      @card = Balanced::Card.new(
        :card_number       => "4111111111111111",
        :expiration_month  => "12",
        :expiration_year   => "2015",
        )
        @customer.add_card(@card)
      end
      it "should add a card to a customer" do
        @customer.cards.size.should eq(1)
      end
    end

    describe "#add_card using tokenized object", :vcr do
      before do
        @customer = @marketplace.create_customer
        @card = @marketplace.create_card(
          :card_number       => "4111111111111111",
          :expiration_month  => "12",
          :expiration_year   => "2015",
        ).save
        @customer.add_card(@card)
        @customer_card_id = @customer.cards.first.id
        @card_id = @card.id
      end
      it "should add a card to a customer" do
        @customer.cards.size.should eq(1)
      end
      it "card added should be the same card" do
        @customer_card_id.should eq(@card_id)
      end
    end

    describe "#add_card using uri", :vcr do
      before do
        @customer = @marketplace.create_customer
        @card = @marketplace.create_card(
          :card_number       => "4111111111111111",
          :expiration_month  => "12",
          :expiration_year   => "2015",
        ).save
        @customer.add_card(@card.uri)
        @customer_card_id = @customer.cards.first.id
        @card_id = @card.id
      end
      it "should add a card to a customer" do
        @customer.cards.size.should eq(1)
      end
      it "card added should be the same card" do
        @customer_card_id.should eq(@card_id)
      end
    end

    describe "#delete card", :vcr do
      before do
        @card_2 = @marketplace.create_card(
            :card_number       => "4111111111111111",
            :expiration_month  => "12",
            :expiration_year   => "2015",
        ).save
        @card_2.unstore
      end
      it "Should throw 404 on deleted card" do
        expect{
          Balanced::Card.find(@card_2.uri)
        }.to raise_error
      end
    end

    describe "#delete bank account", :vcr do
      before do
        @bank_account_2 = @marketplace.create_bank_account(
            :account_number => "0987654321",
            :bank_code => "321174851",
            :name => "Timmy T. McTimmerson",
            :type => "checking"
        )
        @bank_account_2.unstore
      end
      it "Should throw 404 on deleted card" do
        expect {
          Balanced::BankAccount.find(@bank_account_2.uri)
        }.to raise_error
      end
    end

    describe "#add_bank_account using tokenized object", :vcr do
      before do
        @customer = @marketplace.create_customer
        @bank_account = @marketplace.create_bank_account(
          :account_number => "1234567980",
          :bank_code => "321174811",
          :name => "Jack Q Merchant"
        )
        @customer.add_bank_account(@bank_account)
        @customer_bank_account_id = @customer.bank_accounts.first.id
        @bank_account_id = @bank_account.id
      end
      it "should add a bank account to a customer" do
        @customer.bank_accounts.size.should eq(1)
      end
      it "bank account added should be the same bank account" do
        @customer_bank_account_id = @bank_account_id
      end
    end

    describe "#add_bank_account using uri", :vcr do
      before do
        @customer = @marketplace.create_customer
        @bank_account = @marketplace.create_bank_account(
          :account_number => "1234567980",
          :bank_code => "321174811",
          :name => "Jack Q Merchant"
        )
        @customer.add_bank_account(@bank_account.uri)
        @customer_bank_account_id = @customer.bank_accounts.first.id
        @bank_account_id = @bank_account.id
      end
      it "should add a bank account to a customer" do
        @customer.bank_accounts.size.should eq(1)
      end
      it "bank account added should be the same bank account" do
        @customer_bank_account_id = @bank_account_id
      end
    end

    describe "#find_by_email", :vcr => { :record => :new_episodes } do
      before do
        api_key = Balanced::ApiKey.new.save
        Balanced.configure api_key.secret
        @marketplace = Balanced::Marketplace.new.save
        customer = @marketplace.create_customer(
          :name           => "Bill",
          :email          => "bill@bill.com",
          :business_name  => "Bill Inc.",
          :ssn_last4      => "1234",
          :address => {
            :line1 => "1234 1st Street",
            :city  => "San Francisco",
            :state => "CA"
          }
        ).save
      end

      context "email address is in system", :vcr => { :record => :new_episodes } do
        it "should return customer object" do
          Balanced::Customer.find_by_email("bill@bill.com").should be_instance_of Balanced::Customer
        end
      end

      context "email address does not exist", :vcr => { :record => :new_episodes } do
        it "should return nil" do
          Balanced::Customer.find_by_email("foo@bar.com").should be_nil
        end
      end
    end

    describe "#debit" do
      before do
        @customer = @marketplace.create_customer
        @card = @marketplace.create_card(
          :card_number       => "4111111111111111",
          :expiration_month  => "12",
          :expiration_year   => "2015",
        ).save
        @customer.add_card(@card)
        @customer.debit :amount => 1000
      end
      context "customer debit should be added" do
        subject {@customer.debits.first}
        its(:amount) { should eq 1000}
      end
    end

    describe "compound credit and debit", :vcr do
      before do
        @customer = @marketplace.create_customer
        @bank_account = @marketplace.create_bank_account(
          :account_number => "1234567980",
          :bank_code => "321174811",
          :name => "Jack Q Merchant"
        )
        @card = Balanced::Card.new(
          :card_number       => "4111111111111111",
          :expiration_month  => "12",
          :expiration_year   => "2015",
        ).save
        @customer.add_card(@card)
        @customer.add_bank_account(@bank_account)
        @customer.debit :amount => 1250
      end

      context "args passed by name via options hash" do
        subject {
          @customer.credit(
            amount: 1250,
            description: "description",
            meta: {}
          )
        }

        its(:amount) { should == 1250 }
        its(:meta) { should == {} }
        its(:description) { should == "description" }
      end
    end

    describe "#active_card", :vcr do
      before do
        @customer = @marketplace.create_customer
        @card = @marketplace.create_card(
          :card_number       => "4111111111111111",
          :expiration_month  => "12",
          :expiration_year   => "2015",
        ).save
        @customer.add_card(@card)
      end
      it "should display the most recently added valid card" do
        @customer.active_card.should_not be_nil
      end
    end

    describe "#active_bank_account", :vcr do
      before do
        @customer = @marketplace.create_customer
        @bank_account = @marketplace.create_bank_account(
          :account_number => "1234567980",
          :bank_code => "321174811",
          :name => "Jack Q Merchant"
        )
        @customer.add_bank_account(@bank_account)
      end
      it "should display the most recently added valid card" do
        @customer.active_bank_account.should_not be_nil
      end
    end

    describe "find_by_email", :vcr do
      before do
        @customer = @marketplace.create_customer(
            :email => "balanced-ruby-issue-110@example.com"
        )
      end

      it "should return 401 unauthorized if not authenticated" do
        @customer.uri.should_not be_nil
        key = Balanced.client.api_key
        Balanced.configure(nil)
        expect {
          Balanced::Customer.find(
              :first,
              email: "balanced-ruby-issue-110@example.com")
        }.to raise_error Balanced::Unauthorized
        Balanced.configure(key)
      end

    end
  end

end
