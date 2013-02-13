require "spec_helper"

describe Balanced::Callback do
  use_vcr_cassette

  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret

    @marketplace = Balanced::Marketplace.new.save
    card = @marketplace.create_card(
        :card_number      => "5105105105105100",
        :expiration_month => "12",
        :expiration_year  => "2015"
    )
    # An initial balance for the marketplace
    @buyer = @marketplace.create_buyer(
        :email_address => 'buyer@example.org',
        :card_uri => card.uri
    )
    @buyer.debit :amount => 10000000

  end

  describe 'fail creating an callback' do
    use_vcr_cassette

    it 'should not create without a url field' do
      lambda { @marketplace.create_callback(

      ) }.should raise_error(Balanced::BadRequest)
    end
  end

  describe "create" do
    use_vcr_cassette

    before do
      @callback = @marketplace.create_callback(
          :url => "http://www.example.com/balanced_callback"
      )
    end

    context 'check url' do

      subject { @callback.url}
      it { should eql "http://www.example.com/balanced_callback" }

    end

  end

  describe "delete" do
    use_vcr_cassette

    before do
      @callback = @marketplace.create_callback(
          :url => "http://www.example.com/balanced_callback"
      )
    end

    context 'delete' do

      subject { @callback.delete }
      it { should be_nil }

    end

  end

end
