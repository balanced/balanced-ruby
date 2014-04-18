require 'spec_helper'

describe Balanced::Order, :vcr, :marketplace => true do

  context 'created with verified merchant' do
    subject(:order) do
      customer = Balanced::Customer.new(
          :name => 'Henry Ford',
          :dob_month => 7,
          :dob_year => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save
      customer.create_order
    end

    its(:href) { should eq "/orders/#{subject.id}" }
    its('merchant.merchant_status') { should eq 'underwritten' }
  end

  describe 'simple order' do
    before do
      # create seller
      @merchant = Balanced::Customer.new(
          :name => 'Henry Ford',
          :dob_month => 7,
          :dob_year => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save
      @bank_account =@merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )

      # create buyer
      @buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = @buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order
    end

    it 'should debit buyer and pay merchant' do
      # statement/description to test passthrough to debit/credit
      @debit_description = 'Debit Description'
      @debit_statement_message = 'Debit Message'
      @credit_description = 'Credit Description'
      @credit_statement_message = 'Credit Message'
      @meta = {"order_id" => "1111"}

      debit = @order.debit_from(
          :source => @card,
          :amount => 10000,
          :appears_on_statement_as => @debit_statement_message,
          :description => @debit_description,
          :meta => @meta
      )

      @order.reload
      @order.amount.should eq 10000
      @order.amount_escrowed.should eq 10000

      debit.description.should eq @debit_description
      debit.meta.should eq @meta
      debit.appears_on_statement_as.should eq "BAL*" << @debit_statement_message

      credit = @order.credit_to(
          :destination => @bank_account,
          :amount => 8000,
          :appears_on_statement_as => @credit_statement_message,
          :description => @credit_description,
          :meta => @meta
      )

      @order.reload
      @order.amount.should eq 10000
      @order.amount_escrowed.should eq 2000
      @order.debits.map { |d| d.href }.should include(debit.href)

      credit.description.should eq @credit_description
      credit.meta.should eq @meta
      credit.appears_on_statement_as.should eq @credit_statement_message
    end

  end

  describe "can't over credit" do
    before do
      # create seller
      @merchant = Balanced::Customer.new(
          :name => 'Henry Ford',
          :dob_month => 7,
          :dob_year => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save
      @bank_account =@merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )

      # create buyer
      @buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = @buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order
    end

    it 'credit should fail' do
      @order.debit_from(
          :source => @card,
          :amount => 1234
      )

      @order.reload
      @order.amount.should eq 1234
      @order.amount_escrowed.should eq 1234

      expect {
        @order.credit_to(:destination => @bank_account, :amount => 2000)
      }.to raise_exception(Balanced::Conflict)

      @order.reload
      @order.amount.should eq 1234
    end
  end

  describe 'create with unverified merchant' do
    before do
      # create seller
      @merchant = Balanced::Customer.new(
          :name => 'William Henry Cavendish III',
          :dob_month => 7,
          :dob_year => 1963
      ).save
      @bank_account =@merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )

      # create buyer
      @buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = @buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order
    end

    it 'credit should succeed when not underwritten' do
      @merchant.merchant_status.should eq 'no-match'
      @bank_account =@merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )

      @order.debit_from(:source => @card, :amount => 1234)

      @order.reload
      @order.amount.should eq 1234
      @order.amount_escrowed.should eq 1234

      @order.credit_to(
          :destination => @bank_account,
          :amount => 1234
      )

      @order.reload
      @order.amount.should eq 1234
    end
  end

  describe 'refund order' do
    before do

      # create seller
      bank_account = Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save
      @merchant = Balanced::Customer.new(
          :name => 'Henry Ford',
          :dob_month => 7,
          :dob_year => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save
      bank_account.associate_to_customer(@merchant)

      # create buyer
      @buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      card = @buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order

      @debit = @order.debit_from(
          :source => card,
          :amount => 1234
      )

      @credit = @order.credit_to(
          :destination => bank_account,
          :amount => 1234
      )
    end

    it 'should create reversal and refund' do
      @order.reload
      @order.amount.should eq 1234
      @order.amount_escrowed.should eq 0

      @credit.reverse

      @order.reload
      @order.amount_escrowed.should eq 1234

      @debit.refund

      @order.reload
      @order.amount_escrowed.should eq 0
    end
  end

  describe 'failure behavior' do
    before do
      # create seller
      @bank_account = Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save
      @merchant = Balanced::Customer.new(
          :name => 'Henry Ford',
          :dob_month => 7,
          :dob_year => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save

      @bank_account.associate_to_customer(@merchant)

      # create buyer
      @failing_card = Balanced::Card.new(
          :number => '4444444444444448',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      ).save
      @buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save

      @failing_card.associate_to_customer(@buyer)

      # create order
      @order = @merchant.create_order
    end

    it 'should not show failed transactions by default' do
      lambda {
        @order.debit_from(
            :amount => 600,
            :source => @failing_card
        )
      }.should raise_error(Balanced::PaymentRequired)
      lambda {
        @order.credit_to(
            :amount => 600,
            :destination => @bank_account
        )
      }.should raise_error(Balanced::Conflict)

      @order.reload
      @order.amount.should eq 0
      @order.amount_escrowed.should eq 0

      @order.debits.to_a.should eql []
      @order.credits.to_a.should eql []

      @order.debits.where(:status => 'failed').total.should eq 1
      @order.credits.where(:status => 'failed').total.should eq 1

    end
  end

  describe 'when seller is not underwritten' do
    before do
      # create seller
      @bank_account = Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save

      @merchant = Balanced::Customer.new(
          :name => 'Henry Ford'
      ).save

      @bank_account.associate_to_customer(@merchant)

      # create buyer
      @buyer_card = Balanced::Card.new(
          :name => 'Darius the Great',
          :number => '4' + '1' * 15,
          :expiration_month => 12,
          :expiration_year => 2016,
          :cvv => '123',
          :address => {
              :line1 => '965 Mission St',
              :line2 => 'Suite 425',
              :city => 'San Francisco',
              :state => 'CA',
              :postal_code => '94103'
          }
      ).save

      @buyer = Balanced::Customer.new(
          :name => 'Darius the Great',
          :email => 'darius.great@gmail.com',
          :meta => {
              :ip_address => '174.240.15.249'
          }
      ).save

      @buyer_card.associate_to_customer(@buyer)

      # create order
      @order = @merchant.create_order
      @order.debit_from(:source => @buyer_card, :amount => 1000)
    end

    it 'should allow credits to the seller' do
      @order.credit_to(
          :amount => 100,
          :destination => @bank_account
      )
    end
  end
end
