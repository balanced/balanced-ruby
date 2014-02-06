require 'spec_helper'

describe Balanced::BankAccount, :vcr => true, :marketplace => true do

  context 'after successful creation' do
    subject(:bank_account) {
      Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save
    }
    its(:id) { subject.id.should_not be_nil }
    its(:href) { subject.href.should eq("/bank_accounts/#{subject.id}") }
    its(:account_type) { should eq('checking') }
    its(:routing_number) { should eq('321174851') }
    its(:account_number) { should end_with('4321') }
    its(:name) { should eq('William Henry Cavendish III') }
    its(:fingerprint) { should_not be_nil }
    its(:customer) { should be_nil }
  end

  context 'create invalid' do
    it 'should not create without a routing_number field' do
      lambda { Balanced::BankAccount.new(
          :account_number => '0987654321',
          :name => 'Timmy T. McTimmerson',
          :type => 'checking'
      ).save }.should raise_error(Balanced::BadRequest)
    end

    it 'should not create without a account_number field' do
      lambda { Balanced::BankAccount.new(
          :routing_number => '321174851',
          :name => 'Timmy T. McTimmerson',
          :type => 'checking'
      ).save }.should raise_error(Balanced::BadRequest)
    end

    it 'should not create without a type field' do
      lambda { Balanced::BankAccount.new(
          :account_number => '0987654321',
          :bank_code => '321174851',
          :name => 'Timmy T. McTimmerson'
      ).save }.should raise_error(Balanced::BadRequest)
    end
  end

  context 'successful verification' do
    subject(:verification) do
      @bank_account = Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save
      @verification = @bank_account.verify
    end

    it 'verification#attributes' do
      subject.bank_account.href.should eql(@bank_account.href)
      subject.attempts_remaining.should eql(3)
      subject.verification_status.should eql('pending')
    end

    it 'confirmation#attributes' do
      confirmation = subject.confirm(1, 1)
      confirmation.bank_account.href.should eql(subject.bank_account.href)
      subject.attempts_remaining.should eql(2)
      subject.verification_status.should eql('succeeded')
    end

    it 'successfully debits' do
      subject.confirm(1, 1)
      subject.verification_status.should eql('succeeded')
      debit = subject.bank_account.debit(:amount => 1000)
      debit.status.should eql('succeeded')
    end

  end

  context 'fails' do
    before do
      @bank_account = Balanced::BankAccount.new(
          :name => 'Karl Malone',
          :routing_number => '021000021',
          :account_number => '9900000002',
          :type => 'checking'
      ).save
      @verification = @bank_account.verify
    end

    it 'throws error on invalid amounts' do
      3.times do
        expect {
          @verification.confirm(2, 3)
        }.to raise_error(Balanced::BankAccountVerificationFailure) { |exc|
          expect(exc.description).to start_with 'Authentication amounts do not match'
        }
      end
    end

    it 'fails to debit' do
      expect {
        @verification.confirm(2, 3)
      }.to raise_error(Balanced::BankAccountVerificationFailure) { |exc|
        expect(exc.description).to start_with 'Authentication amounts do not match'
      }
      expect {
        @bank_account.debit(:amount => 1000)
      }.to raise_exception(Balanced::Conflict) { |exc|
        expect(exc.description).to start_with 'Funding instrument cannot be debited'
      }
    end

  end

  describe '#debit' do
    before do
      @bank_account = Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save
      @verification = @bank_account.verify
      @verification.confirm(1, 1)
    end

    it 'succeeds' do
      debit = @bank_account.debit(:amount => 1000)
      debit.status.should eql('succeeded')
    end
  end

  describe '#credit' do
    before do
      @bank_account = Balanced::BankAccount.new(
          :name => 'William Henry Cavendish III',
          :routing_number => '321174851',
          :account_number => '0987654321',
          :type => 'checking'
      ).save
    end

    it 'succeeds', :vcr => {:record => :new_episodes} do
      @credit = @bank_account.credit(:amount => 1000)
      @credit.should be_instance_of Balanced::Credit
      @credit.status.should eql('succeeded')
      @credit.destination.href.should eql(@bank_account.href)
    end
  end
end
