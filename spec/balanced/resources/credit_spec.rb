require "spec_helper"

describe Balanced::Credit do

  use_vcr_cassette

  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    card = Balanced::Card.new(
      :card_number      => "5105105105105100",
      :expiration_month => "12",
      :expiration_year  => "2015"
    ).save

    # An initial balance for the marketplace
    @buyer = @marketplace.create_buyer(
        :email_address => 'buyer@example.org',
        :card_uri => card.uri
    )
    @buyer.debit :amount => 10000000
  end

  describe "#create" do
    use_vcr_cassette

    before do
      @credit = Balanced::Credit.new(
        :amount => 5000,
        :description => "A sweet ride",
        :bank_account => {
          :account_number => "0987654321",
          :bank_code => "321174851",
          :name => "Timmy T. McTimmerson",
          :type => "savings"
        }
      ).save
    end

    describe 'amount' do
      use_vcr_cassette
      subject { @credit.amount }
      it { should == 5000 }
    end

    describe 'account' do
      use_vcr_cassette
      subject { @credit.account }
      it { should be_nil }
    end

    describe 'bank_account' do
      use_vcr_cassette
      subject { @credit.bank_account }
      its(:account_number) { should end_with '4321' }
    end

  end
end
