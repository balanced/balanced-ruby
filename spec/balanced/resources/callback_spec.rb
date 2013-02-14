require "spec_helper"

describe Balanced::Callback do
  use_vcr_cassette

  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret

    @marketplace = Balanced::Marketplace.new.save

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
      it "should delete without an error" do

        @callback.destroy

      end

    end

  end

end
