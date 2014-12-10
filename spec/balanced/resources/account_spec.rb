require 'spec_helper'

describe Balanced::Account, :vcr, :marketplace => true do

  describe 'credit funds from order to account' do
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

      # create buyer
      buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order

      # set amount for debit
      @amount = 10000
    end

    it 'should increase an account balance when credited' do
      @order.debit_from(
          :source => @card,
          :amount => @amount
      )
      
      account_credit = @merchant.payable_account.credit(
          :amount => @amount,
          :order => @order
      )

      @merchant.payable_account.balance.should eq @amount
      account_credit.status.should eq 'succeeded'

    end
  end

  describe "settling an account" do
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
      @bank_account = @merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )
      @bank_account.associate_to_customer(@merchant)

      # create buyer
      buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order

      # set amount for debit
      @amount = 10000

      # debit into the order
      debit = @order.debit_from(
          :source => @card,
          :amount => @amount
      )

      # credit the account
      account_credit = @merchant.payable_account.credit(
          :amount => @amount,
          :order => @order
      )
    end

    it 'reduces the account balance to zero' do
      # settle the account
      settlement = @merchant.payable_account.settle(
          :funding_instrument => @bank_account,
          :appears_on_statement_as => "Settlement Oct",
          :description => "Settlement for payouts from October"
      )

      settlement.amount.should eq @amount
      settlement.appears_on_statement_as.should eq "BAL*Settlement Oct"
      settlement.description.should eq "Settlement for payouts from October"
      @merchant.payable_account.balance.should eq 0
    end
  end

  describe 'reversing a settlement' do
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
      @bank_account = @merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )
      @bank_account.associate_to_customer(@merchant)

      # create buyer
      buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order

      # set amount for debit
      @amount = 10000

      # debit into the order
      @order.debit_from(
          :source => @card,
          :amount => @amount
      )

      # credit the account
      @account_credit = @merchant.payable_account.credit(
          :amount => @amount,
          :order => @order
      )

      # settle the account
      @settlement = @merchant.payable_account.settle(
          :funding_instrument => @bank_account.href,
          :appears_on_statement_as => "Settlement Oct",
          :description => "Settlement for payouts from October"
      )
    end

    it 'credit should be reversible when account has pending balance' do
      order_two = @merchant.create_order
      order_two.debit_from(
          :source => @card,
          :amount => @amount
      )

      credit = @merchant.payable_account.credit(
          :amount => @amount,
          :order => order_two
      )
      @merchant.payable_account.balance.should eq @amount

      credit.reverse(:amount => @amount)

      #@payable_account.reload
      @merchant.payable_account.balance.should eq 0

    end
  end

  describe 'settling an account with an negative balance' do
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
      @bank_account = @merchant.bank_accounts.create(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      )
      @bank_account.associate_to_customer(@merchant)

      # create buyer
      buyer = Balanced::Customer.new(
          :name => 'John Buyer'
      ).save
      @card = buyer.cards.create(
          :number => '5105105105105100',
          :expiration_month => '12',
          :expiration_year => '2020',
          :cvv => '123'
      )

      # create order
      @order = @merchant.create_order

      # set amount for debit
      @amount = 10000

      # debit into the order
      @order.debit_from(
          :source => @card,
          :amount => @amount
      )

      # credit the account
      @account_credit = @merchant.payable_account.credit(
          :amount => @amount,
          :order => @order
      )

      # settle the account
      @settlement = @merchant.payable_account.settle(
          :funding_instrument => @bank_account,
          :appears_on_statement_as => "BAL*Settlement Oct",
          :description => "Settlement for payouts from October"
      )
    end

    it 'should create reversal and refund' do
      @account_credit.reverse(:amount => @amount)

      @merchant.payable_account.reload
      @merchant.payable_account.balance.should eq -@amount

      @settlement = @merchant.payable_account.settle(
          :funding_instrument => @bank_account,
          :appears_on_statement_as => "Reverse Settlement Oct",
          :description => "Settlement for payouts from October"
      )

      @merchant.payable_account.balance.should eq 0
    end
  end
end
