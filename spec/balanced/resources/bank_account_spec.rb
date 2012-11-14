require "spec_helper"
describe Balanced::BankAccount do
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
    @buyer = @marketplace.create_buyer("buyer@example.org", card.uri)
    @buyer.debit(10000000)

    @incomplete_bank_account_hash = {
      :account_number => "0987654321",
      :bank_code => "321174851",
      :name => "Timmy T. McTimmerson"
    }
  end

  describe 'when exception is thrown' do
    use_vcr_cassette

    it 'should not create without a type field' do
      lambda { Balanced::BankAccount.new(
                 :account_number => "0987654321",
                 :bank_code => "321174851",
                 :name => "Timmy T. McTimmerson"
      ).save }.should raise_error(Balanced::BadRequest)
    end
  end

  describe 'create' do
    use_vcr_cassette

    before do
      @bank_account = Balanced::BankAccount.new(
                 :account_number => "0987654321",
                 :bank_code => "321174851",
                 :name => "Timmy T. McTimmerson",
                 :type => "checking"
      ).save
    end

    describe 'account' do
      use_vcr_cassette
      subject { @bank_account.account }
      it { should be_nil }
    end

    describe 'account_number' do
      use_vcr_cassette
      subject { @bank_account.account_number }
      it { should end_with '4321' }
    end

    describe 'fingerprint' do
      use_vcr_cassette
      subject { @bank_account.fingerprint }
      it { should have_at_least(20).characters }
    end

    describe 'credit' do
      use_vcr_cassette

      before do
        @credit = @bank_account.credit(
          :amount => 50,
          :description => 'Blah'
        )
      end

      describe 'bank_account' do
        use_vcr_cassette

        subject { @credit.bank_account }
        its(:account_number) {should end_with '4321'}
        its(:routing_number) {should eql '321174851'}
      end
    end
  end
end
