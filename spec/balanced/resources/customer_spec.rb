require 'spec_helper'

describe Balanced::Customer, :vcr do

  before do
    @api_key = Balanced::ApiKey.new.save
    Balanced.configure @api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    @customer = Balanced::Customer.new(
        :name => 'Bill',
        :email => 'bill@bill.com',
        :business_name => 'Bill Inc.',
        :ssn_last4 => '1234',
        :address => {
            :line1 => '1234 1st Street',
            :city => 'San Francisco',
            :state => 'CA'
        }
    ).save
  end

  describe 'attributes', :vcr do
    subject { @customer }
    its(:href) { should match "/customers/#{@customer.id}" }
    its(:name) { should eq 'Bill' }
    its(:email) { should eq 'bill@bill.com' }
    its(:business_name) { should eq 'Bill Inc.' }
  end

  describe '#add_source', :vcr do
    before do
      @card = Balanced::Card.new(
          :number => '4111111111111111',
          :expiration_month => '12',
          :expiration_year => '2015'
      ).save
      @card.associate_to_customer(@customer)
    end

    it 'assumes the card is associated', :vcr do
      @customer.cards.total.should eql(1)
    end

    it 'should make the card a source', :vcr do
      @customer.add_source(@card)
      @customer.source.should be_instance_of Balanced::Card
      @customer.source.href.should eql(@card.href)
    end

  end

  describe '#add_destination', :vcr do
    before do
      @bank_account = Balanced::BankAccount.new(
          :account_number => '1234567980',
          :routing_number => '111000025',
          :name => 'Jack Q Merchant'
      ).save
      @bank_account.associate_to_customer(@customer)
    end

    it 'assumes the bank account is associated', :vcr do
      @customer.bank_accounts.total.should eql(1)
    end

    it 'should make the bank account a destination', :vcr do
      @customer.add_destination(@bank_account)
      @customer.destination.should be_instance_of Balanced::BankAccount
      @customer.destination.href.should eql(@bank_account.href)
    end

  end

  describe '#find_by_email', :vcr do

    context 'email address is in system', :vcr do
      it 'should return customer object' do
        bill = Balanced::Customer.find_by_email('bill@bill.com')
        bill.should be_instance_of Balanced::Customer
      end
    end

    context 'email address does not exist', :vcr do
      it 'should return nil' do
        Balanced::Customer.find_by_email('foo@bar.com').should be_nil
      end
    end
  end

  describe 'update' do
    before do
      @customer = Balanced::Customer.new(
          :name => 'Bill',
          :email => 'bill@bill.com',
          :business_name => 'Bill Inc.'
      ).save
    end

    subject do
      @customer
    end

    its(:name) { should eq 'Bill' }
    its(:merchant_status) { should eq 'no-match' }

    it 'update name' do
      @customer.name = 'William'
      @customer.save

      # Fetch the customer again
      @customer.reload
      @customer.name.should eq 'William'
    end

    it 'can be underwritten' do
      @customer.name = 'Henry Ford'
      @customer.dob_month = 7
      @customer.dob_year = 1963
      @customer.business_name = nil
      @customer.address['postal_code'] = 48120
      @customer.save

      @customer.name.should eq 'Henry Ford'
      @customer.dob_month.should eql 7
      @customer.dob_year.should eql 1963
      @customer.business_name.should be_nil
      @customer.address['postal_code'].should eql '48120'
      @customer.merchant_status.should eq 'underwritten'
    end

  end

end
