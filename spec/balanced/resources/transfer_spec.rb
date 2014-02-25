require 'spec_helper'


describe Balanced::Transfer, :vcr, :marketplace => true do

  describe 'simple transfer' do
    before do

      # create seller
      @customer = Balanced::Customer.new(
          :name      => 'Henry Ford',
          :dob_month => 7,
          :dob_year  => 1963,
          :address => {
              :postal_code => '48120'
          }
      ).save

      @bank_account = @customer.bank_accounts.create(
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

      @account = @customer.deposit_account

      @address = {
          :line1 => '965 Mission St',
          :line2 => 'Suite 425',
          :city => 'San Francisco',
          :state => 'CA',
          :postal_code => '94103',
          :country_code => 'US'
      }

      @order = @customer.create_order(
        :description => 'Simple Order'
      )
    end

    it 'can transfer to a bank account' do
      amount = 124
      initial_balance = @account.balance

      @order.debit_from(
          :source => @card,
          :amount => amount
      )

      # move funds to account where it accrues a balance
      @order.credit_to(:destination => @account, :amount => amount)

      # Withdraw from Balanced to a bank account
      withdrawal = @account.transfer_to(
          :destination => @bank_account,
          :amount => amount
      )

      withdrawal.amount.should eql amount
      withdrawal.should be_instance_of Balanced::Transfer

      @account.reload
      @account.balance.should eql initial_balance

    end

  end

end
