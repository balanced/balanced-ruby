require "spec_helper"

describe Balanced::Hold, :vcr do
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    card = Balanced::Card.new(
      :card_number      => "5105105105105100",
      :expiration_month => "12",
      :expiration_year  => "2015"
    ).save
    @buyer = @marketplace.create_buyer(
        :email_address => 'buyer@example.org',
        :card_uri => card.uri,
    )
  end

  describe "#void", :vcr do
    before do
      @hold = @buyer.hold :amount => 100
    end

    describe 'before', :vcr do
      subject { @hold.is_void }
      it { should be_false }
    end

    describe 'after', :vcr do
      before { @hold.void }

      subject { @hold.is_void }
      it { should be_true }
    end

    describe 'when exception is thrown', :vcr do
      before do
        @hold = @buyer.hold :amount => 150
        @debit = @hold.capture
      end

      it "should not change void state since its captured" do
        lambda { @hold.void }.should raise_error(Balanced::Conflict)
        @hold.is_void.should be_false
      end
    end
  end
end
