require 'spec_helper'

describe Balanced::Credit, :vcr do
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    card = Balanced::Card.new(
        :number => '5105105105105100',
        :expiration_month => '12',
        :expiration_year => '2015'
    ).save

    # An initial balance for the marketplace
    card.debit(:amount => 1000000)
  end

  describe '#create', :vcr do
    before do
      @credit = Balanced::Credit.new(
          :amount => 5000,
          :description => 'A sweet ride',
          :destination => {
              :routing_number => '321174851',
              :account_number => '0987654321',
              :name => 'Timmy T. McTimmerson',
              :type => 'checking'
          }
      ).save
    end

    describe 'amount', :vcr do
      subject { @credit.amount }
      it { should == 5000 }
    end

    describe 'customer', :vcr do
      subject { @credit.customer }
      it { should be_nil }
    end

  end

  describe '#reverse', :vcr do
    before do
      @credit = Balanced::Credit.new(
          :amount => 5000,
          :description => 'A sweet ride',
          :destination => {
              :routing_number => '321174851',
              :account_number => '0987654321',
              :name => 'Timmy T. McTimmerson',
              :type => 'checking'
          }
      ).save
      @reversal = @credit.reverse
    end

    describe '#amount', :vcr do
      subject { @reversal.amount }
      it { should == 5000 }
    end

    describe '#type', :vcr do
      subject { @reversal }
      it { should be_instance_of Balanced::Reversal }
    end
  end

  describe 'credit with underwritten customer' do
    before do
      @customer = Balanced::Customer.new(
          :name => 'Henry Ford',
          :dob_month => 7,
          :dob_year => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save
      @bank_account = Balanced::BankAccount.new(
          :routing_number => '321174851',
          :account_number => '9900000003',
          :name => 'Larry Bird',
          :type => 'checking'
      ).save
      @bank_account.associate_to_customer(@customer)
      @credit = @bank_account.credit(
          :amount => 5000,
          :description => 'A sweet ride'
      )
    end

    describe 'merchant_status', :vcr do
      subject { @customer.merchant_status }
      it { should eq 'underwritten' }
    end

    describe 'amount', :vcr do
      subject { @credit.amount }
      it { should == 5000 }
    end

    describe 'status' do
      subject { @credit.status }
      it { should eq 'succeeded' }
    end
  end
end
