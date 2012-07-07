require "spec_helper"

describe Balanced::Hold do
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
    @buyer = @marketplace.create_buyer("buyer@example.org", card.uri)
  end

  describe "#void" do
    use_vcr_cassette

    before do
      @hold = @buyer.hold 100
    end

    describe 'before' do
      use_vcr_cassette
      subject { @hold.is_void }
      it { should be_false }
    end

    describe 'after' do
      use_vcr_cassette
      before { @hold.void }

      subject { @hold.is_void }
      it { should be_true }
    end

    describe 'when exception is thrown' do
      use_vcr_cassette
      before do
        @hold = @buyer.hold 150
        @debit = @hold.capture
      end

      it "should not change void state since its captured" do
        lambda { @hold.void }.should raise_error(Balanced::Conflict)
        @hold.is_void.should be_false
      end
      # void here.


    end

  end
end
