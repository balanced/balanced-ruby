require "spec_helper"

describe Balanced::BankAccount, :vcr do
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret

    @marketplace = Balanced::Marketplace.new.save
    card = @marketplace.create_card(
        :card_number => "5105105105105100",
        :expiration_month => "12",
        :expiration_year => "2015"
    )
    # An initial balance for the marketplace
    @buyer = @marketplace.create_buyer(
        :email_address => 'buyer@example.org',
        :card_uri => card.uri
    )
    @buyer.debit :amount => 10000000

    @incomplete_bank_account_hash = {
        :account_number => "0987654321",
        :bank_code => "321174851",
        :name => "Timmy T. McTimmerson"
    }
  end

  describe 'when exception is thrown', :vcr do
    it 'should not create without a type field' do
      lambda { Balanced::BankAccount.new(
          :account_number => "0987654321",
          :bank_code => "321174851",
          :name => "Timmy T. McTimmerson"
      ).save }.should raise_error(Balanced::BadRequest)
    end
  end

  describe 'create', :vcr do
    before do
      @bank_account = @marketplace.create_bank_account(
          :account_number => "0987654321",
          :bank_code => "321174851",
          :name => "Timmy T. McTimmerson",
          :type => "checking"
      )
    end

    context 'without an account' do

      subject { @bank_account.account }
      it { should be_nil }

      describe 'has_account?' do

        subject { @bank_account.has_account? }
        it { should be_false }

      end
    end

    context 'with an account', :vcr do
      before do
        @account = @marketplace.create_account
        bank_account = @marketplace.create_bank_account(
            :account_number => "0987654321",
            :bank_code => "321174851",
            :name => "Timmy T. McTimmerson",
            :type => "checking"
        )
        @account.add_bank_account(bank_account.uri)
        @bank_account_two = bank_account.reload
      end

      describe 'has_account?' do
        subject { @bank_account_two.has_account? }
        it { should be_true }
      end

    end

    describe 'account_number', :vcr do
      subject { @bank_account.account_number }
      it { should end_with '4321' }
    end

    describe 'fingerprint', :vcr do
      subject { @bank_account.fingerprint }
      it { should have_at_least(20).characters }
    end

    describe 'does not invalidate on save', :vcr do
      before do
        @bank_account = @marketplace.create_bank_account(
            :account_number => "0987654321",
            :bank_code => "321174851",
            :name => "Timmy T. McTimmerson",
            :type => "checking"
        )
        @account = @marketplace.create_account
        @account.add_bank_account(@bank_account.uri)
        @bank_account = @account.bank_accounts[0]
        @bank_account.save
      end

      subject { @bank_account.is_valid }
      it { should be_true }
    end

    describe 'credit', :vcr do
      before do
        @credit = @bank_account.credit(
            :amount => 50,
            :description => 'Blah'
        )
      end

      describe 'bank_account' do
        subject { @credit.bank_account }
        its(:account_number) { should end_with '4321' }
        its(:routing_number) { should eql '321174851' }
      end

      describe 'without an account', :vcr do
        before do
          @bank_account = @marketplace.create_bank_account(
              :account_number => "1234567890111",
              :bank_code => "021000021",
              :name => "Timmy T. McTimmerson",
              :type => "checking"
          )
        end
        
        describe 'with appears_on_statement_as', :vcr do
          before do
            @credit = @bank_account.credit(amount: 1000, description: "Testing", appears_on_statement_as: "Test Company")
          end
          
          subject { @credit }
          its(:appears_on_statement_as) { should eql 'Test Company' }
        end
      end

      describe 'with an account', :vcr do
        before do
          @bank_account = @marketplace.create_bank_account(
              :account_number => "1234567890111",
              :bank_code => "021000021",
              :name => "Timmy T. McTimmerson",
              :type => "checking"
          )
          @account = @marketplace.create_account
          @account.add_bank_account(@bank_account.uri)
          @bank_account.reload
        end
      
        describe 'with appears_on_statement_as', :vcr do
          before do
            @credit = @bank_account.credit(
              :amount => 1000,
              :description => "Blahblahblah",
              :appears_on_statement_as => "Test Company"
            )
          end
        
          subject { @credit }
          it { should respond_to :account }
          it { should be_instance_of Balanced::Credit }
          its(:appears_on_statement_as) { should eql 'Test Company' }
        end
        
        describe 'without appears_on_statement_as', :vcr do
          before do
            @credit = @bank_account.credit(
              :amount => 1000,
              :description => "Testing",
            )
          end
        
          subject { @credit }
          it { should respond_to :account }
          it { should be_instance_of Balanced::Credit }
          its(:appears_on_statement_as) { should eql 'example.com' }
        end
      end
    end
  end

  describe 'verification' do

    describe 'cannot debit when unverified', :vcr do
      before do
        @bank_account = @marketplace.create_bank_account(
            :account_number => "0987654321",
            :bank_code => "321174851",
            :name => "Timmy T. McTimmerson",
            :type => "checking"
        )
        @account = @marketplace.create_account
        @account.add_bank_account(@bank_account.uri)
      end

      it do
        lambda {
          @account.debit(:amount => 100)
        }.should raise_error(Balanced::Conflict)
      end
    end

    describe 'debits when verified', :vcr do
      before do
        @bank_account = @marketplace.create_bank_account(
            :account_number => "0987654321",
            :bank_code => "321174851",
            :name => "Timmy T. McTimmerson",
            :type => "checking"
        )
        @account = @marketplace.create_account
        @account.add_bank_account(@bank_account.uri)
      end

      it do

        authentication = @bank_account.verify
        authentication.confirm(1, 1)

        @account.debit(:amount => 100)
      end
    end

    describe 'errors when incorrectly verified', :vcr do
      before do
        @bank_account = @marketplace.create_bank_account(
            :account_number => "0987654321",
            :bank_code => "321174851",
            :name => "Timmy T. McTimmerson",
            :type => "checking"
        )
        @account = @marketplace.create_account
        @account.add_bank_account(@bank_account.uri)
      end

      it do

        authentication = @bank_account.verify

        lambda {
          authentication.confirm(1, 2)
        }.should raise_error(Balanced::BankAccountVerificationFailure)
      end
    end
  end
end
