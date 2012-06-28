require "spec_helper"

describe Balanced::Account do
  use_vcr_cassette
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
  end

  describe "merchant" do
    use_vcr_cassette

    before do
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
      use_vcr_cassette
      before do
        @bank_account = Balanced::BankAccount.new(
          :account_number => "1234567890",
          :bank_code => "321174851",
          :name => "Jack Q Merchant"
        ).save
      end
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

      describe "when creating" do
        use_vcr_cassette
        before do
          bank_account = Balanced::BankAccount.new(
            :account_number => "1234567890",
            :bank_code => "321174851",
            :name => "Jack Q Merchant"
          ).save
          @merchant = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "merchant@example.org",
            :merchant => @merchant_attributes,
            :bank_account_uri => bank_account.uri,
            :name => "Jack Q Merchant"
          )
        end
        it { -> { @merchant.save }.should_not raise_error }
      end

      describe "after #save" do
        describe "attributes" do
          use_vcr_cassette
          before do
            bank_account = Balanced::BankAccount.new(
              :account_number => "1234567890",
              :bank_code => "321174851",
              :name => "Jack Q Merchant"
            ).save
            @merchant = Balanced::Account.new(
              :uri => @marketplace.accounts_uri,
              :email_address => "merchant2@example.org",
              :merchant => @merchant_attributes,
              :bank_account_uri => bank_account.uri,
              :name => "Jack Q Merchant"
            ).save
          end

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
            it { should eql "merchant2@example.org" }
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
            it { should match MERCHANT_URI_REGEX }
          end
          describe "#holds_uri" do
            subject { @merchant.holds_uri }
            it { should match HOLDS_URI_REGEX }
          end
          describe "#bank_accounts_uri" do
            subject { @merchant.bank_accounts_uri }
            it { should match BANK_ACCOUNTS_URI_REGEX }
          end
          describe "#refunds_uri" do
            subject { @merchant.refunds_uri }
            it { should match REFUNDS_URI_REGEX }
          end
          describe "#debits_uri" do
            subject { @merchant.debits_uri }
            it { should match DEBITS_URI_REGEX }
          end
          describe "#transactions_uri" do
            subject { @merchant.transactions_uri }
            it { should match TRANSACTIONS_URI_REGEX }
          end
          describe "#credits_uri" do
            subject { @merchant.credits_uri }
            it { should match CREDITS_URI_REGEX }
          end
          describe "#cards_uri" do
            subject { @merchant.cards_uri }
            it { should match CARDS_URI_REGEX }
          end
        end
      end
    end

    describe "#add_bank_account" do
      describe "when executing" do
        use_vcr_cassette

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
        it { -> { @merchant.add_bank_account(@new_bank_account.uri) }.should_not raise_error }
      end

      describe "after executing" do
        use_vcr_cassette
        before do
          @bank_account = Balanced::BankAccount.new(
            :account_number => "12345678901",
            :bank_code => "321174851",
            :name => "Jack Q Merchant"
          ).save

          @merchant = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "merchant4@example.org",
            :merchant => @merchant_attributes,
            :bank_account_uri => @bank_account.uri,
            :name => "Jack Q Merchant"
          ).save

          @new_bank_account = Balanced::BankAccount.new(
            :account_number => "53434533",
            :bank_code => "12345678",
            :name => "Jack Q Merchant"
          ).save
          @merchant.add_bank_account(@new_bank_account.uri)
          @bank_accounts = Balanced::BankAccount.find(@merchant.bank_accounts_uri).items
        end

        subject { @bank_accounts.size }
        it { should eql 2 }
      end


    end
  end

  describe "buyer" do
    describe "#save" do
      describe "when creating" do
        use_vcr_cassette
        before do
          card = Balanced::Card.new(
            :card_number => "5105105105105100",
            :expiration_month => "12",
            :expiration_year => "2015",
          ).save
          @buyer = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "buyer@example.org",
            :card_uri => card.uri,
            :name => "Jack Q Buyer"
          )
        end
        it { -> { @buyer.save }.should_not raise_error }
      end

      describe "after #save" do
        describe "attributes" do
          use_vcr_cassette
          before do
            card = Balanced::Card.new(
              :card_number => "4111111111111111",
              :expiration_month => "12",
              :expiration_year => "2015",
            ).save
            @buyer = Balanced::Account.new(
              :uri => @marketplace.accounts_uri,
              :email_address => "buyer2@example.org",
              :card_uri => card.uri,
              :name => "Jack Q Buyer"
            ).save
          end

          describe "#id" do
            subject { @buyer.id }
            it { should_not be_nil }
            it { should_not be_empty }
          end
          describe "#roles" do
            subject { @buyer.roles }
            it { should include("buyer") }
            it { should_not include("merchant") }
          end
          describe "#email_address" do
            subject { @buyer.email_address }
            it { should eql "buyer2@example.org" }
          end
          describe "#name" do
            subject { @buyer.name }
            it { should eql "Jack Q Buyer" }
          end
          describe "#created_at" do
            subject { @buyer.created_at }
            it { should_not be_nil }
            it { should_not be_empty }
          end
          describe "#uri" do
            subject { @buyer.uri }
            it { should match MERCHANT_URI_REGEX }
          end
          describe "#holds_uri" do
            subject { @buyer.holds_uri }
            it { should match HOLDS_URI_REGEX }
          end
          describe "#bank_accounts_uri" do
            subject { @buyer.bank_accounts_uri }
            it { should match BANK_ACCOUNTS_URI_REGEX }
          end
          describe "#refunds_uri" do
            subject { @buyer.refunds_uri }
            it { should match REFUNDS_URI_REGEX }
          end
          describe "#debits_uri" do
            subject { @buyer.debits_uri }
            it { should match DEBITS_URI_REGEX }
          end
          describe "#transactions_uri" do
            subject { @buyer.transactions_uri }
            it { should match TRANSACTIONS_URI_REGEX }
          end
          describe "#credits_uri" do
            subject { @buyer.credits_uri }
            it { should match CREDITS_URI_REGEX }
          end
          describe "#cards_uri" do
            subject { @buyer.cards_uri }
            it { should match CARDS_URI_REGEX }
          end
        end
      end
    end


    describe "#add_card" do

      describe "when executing" do
        use_vcr_cassette
        before do
          card = Balanced::Card.new(
            :card_number => "4111111111111111",
            :expiration_month => "12",
            :expiration_year => "2015",
          ).save
          @new_card = Balanced::Card.new(
            :card_number => "4111111111111111",
            :expiration_month => "1",
            :expiration_year => "2015",
          ).save
          @buyer = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "buyer3@example.org",
            :card_uri => card.uri,
            :name => "Jack Q Buyer"
          ).save
        end
        it do
          -> { @buyer.add_card(@new_card.uri) }.should_not raise_error
        end
      end
      describe "after executing" do
        use_vcr_cassette

        before do
          card = Balanced::Card.new(
            :card_number => "4111111111111111",
            :expiration_month => "12",
            :expiration_year => "2015",
          ).save
          @new_card = Balanced::Card.new(
            :card_number => "5105105105105100",
            :expiration_month => "1",
            :expiration_year => "2017",
          ).save
          @buyer = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "buyer4@example.org",
            :card_uri => card.uri,
            :name => "Jack Q Buyer"
          ).save
          @buyer.add_card(@new_card.uri)
          @cards = Balanced::Card.find @buyer.cards_uri
        end
        subject { @cards.items.size }
        it { should eql 2 }
      end
    end

    describe "#promote_to_merchant" do

      describe "when executing" do
        use_vcr_cassette
        before do

          @merchant_attributes = {
            :type => "person",
            :name => "Billy Jones",
            :street_address => "801 High St.",
            :postal_code => "94301",
            :country => "USA",
            :dob => "1842-01",
            :phone_number => "+16505551234",
          }
          card = Balanced::Card.new(
            :card_number => "4111111111111111",
            :expiration_month => "12",
            :expiration_year => "2015",
          ).save
          @buyer = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "buyer5@example.org",
            :card_uri => card.uri,
            :name => "Jack Q Buyer"
          ).save
        end

        it do
          -> { @buyer.promote_to_merchant @merchant_attributes}.should_not raise_error
        end
      end
      describe "after executing" do
        use_vcr_cassette

        before do
          @merchant_attributes = {
            :type => "person",
            :name => "Billy Jones",
            :street_address => "801 High St.",
            :postal_code => "94301",
            :country => "USA",
            :dob => "1842-01",
            :phone_number => "+16505551234",
          }
          card = Balanced::Card.new(
            :card_number => "4111111111111111",
            :expiration_month => "12",
            :expiration_year => "2015",
          ).save
          @buyer = Balanced::Account.new(
            :uri => @marketplace.accounts_uri,
            :email_address => "buyer6@example.org",
            :card_uri => card.uri,
            :name => "Jack Q Buyer"
          ).save
          @buyer.promote_to_merchant @merchant_attributes
        end
        subject { @buyer.roles }
        it { should include("merchant") }
      end

    end
  end

  describe ".find_by_email" do
    use_vcr_cassette
    before do
      api_key = Balanced::ApiKey.new.save
      Balanced.configure api_key.secret
      @marketplace = Balanced::Marketplace.new.save
      card = Balanced::Card.new(
        :card_number => "5105105105105100",
        :expiration_month => "12",
        :expiration_year => "2015",
      ).save
      buyer = Balanced::Marketplace.my_marketplace.create_buyer(
        "john.doe@example.com",
        card.uri
      )
    end

    context "email address is in system" do
      use_vcr_cassette
      it "should return account object" do
        Balanced::Account.find_by_email("john.doe@example.com").should be_instance_of Balanced::Account
      end
    end

    context "email address does not exist" do
      use_vcr_cassette
      it "should return nil" do
        Balanced::Account.find_by_email("foo@bar.com").should be_nil
      end
    end
  end
end
