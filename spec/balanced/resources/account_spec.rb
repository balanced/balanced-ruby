require 'spec_helper'

describe Balanced::Account, :vcr, :marketplace => true do

  before do
    @customer = Balanced::Customer.new(
        :name           => 'Bill',
        :email          => 'bill@bill.com',
        :business_name  => 'Bill Inc.',
        :ssn_last4      => '1234',
        :address => {
            :line1 => '1234 1st Street',
            :city  => 'San Francisco',
            :state => 'CA'
        }
    ).save
  end

  describe 'creating different types' do

    context 'operating account' do
      it 'should be allowed to go negative' do
        acct = @customer.accounts.create(
            :account_type => Balanced::Account::OPERATING,
            :description => 'Redeemable balances migration',
            :meta => {
                :tag => 'migration-redeemable-balance-account'
            }
        )
        acct.balance.should eql 0
        debit = acct.debit(:amount => 1000)
        debit.amount.should eql 1000
        debit.status.should eql 'succeeded'
        acct.reload
        acct.balance.should eql -1000
      end
    end

    context 'deposit account' do
      it 'should not be allowed to go negative' do
        acct = @customer.accounts.create(
            :account_type => Balanced::Account::DEPOSIT,
            :description => 'Stored Value',
            :meta => {
                :tag => 'customer-redeemable-balance-account'
            }
        )
        acct.balance.should eql 0

        expect{
          acct.debit(:amount => 1000)
        }.to raise_exception(Balanced::Conflict)

        acct.reload
        acct.balance.should eql 0

        credit = acct.credit(:amount => 1000)
        credit.status.should eql 'succeeded'
        credit.amount.should eql 1000
        acct.reload
        acct.balance.should eql 1000
      end
    end

    context 'line of credit account' do
      it 'should not be allowed to go positive' do
        acct = @customer.accounts.create(
            :account_type => Balanced::Account::LINE_OF_CREDIT,
            :description => 'Overweight shipping',
            :meta => {
                :tag => 'customer-credit-line-account'
            }
        )
        acct.balance.should eql 0

        expect{
          acct.credit(:amount => 1000)
        }.to raise_exception(Balanced::Conflict)

        acct.reload
        acct.balance.should eql 0

        debit = acct.debit(:amount => 1000)
        debit.status.should eql 'succeeded'
        debit.amount.should eql 1000
        acct.reload
        acct.balance.should eql -1000
      end
    end

  end

  describe 'creating multiple accounts' do

    context 'three operating accounts' do
      before do
        @accounts = []
        3.times do |i|
          @accounts << @customer.accounts.create(
              :account_type => Balanced::Account::OPERATING,
              :description => "A Random Account #{i}",
              :meta => {
                  :tag => "account-number-#{i}"
              }
          )
        end
      end

      it 'can query for specific accounts via meta' do
        acct = @customer.accounts.where('meta.tag' => 'account-number-1').first
        acct.should_not be_nil
        acct.meta['tag'].should eq 'account-number-1'
        acct.description.should eq 'A Random Account 1'
      end

      it 'all should come back for a customer on the index' do
        # since a customer, when created, has an implicit deposit account
        # we can create more, but we start at 1
        @customer.accounts.total.should eql @accounts.length + 1
      end
    end

  end

end
