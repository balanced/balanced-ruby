require "spec_helper"

describe Balanced do
  describe "configure" do
    use_vcr_cassette
    before do
      @api_key = Balanced::ApiKey.new.save

      Balanced.configure @api_key.secret
    end

    describe "api key" do
      describe "merchant" do
        subject { @api_key.merchant }
        it { should_not be_nil }
      end
    end

    describe "#client" do
      subject { Balanced.client }
      it { should_not be_nil }

      describe "#connection" do
        subject { Balanced.client.conn }
        it { should_not be_nil }
      end

      describe "#api_key" do
        subject { Balanced.client.api_key }
        it { should eql @api_key.secret }
      end

      describe "#url" do
        subject { Balanced.client.url.to_s }
        it { should eql "https://api.balancedpayments.com" }
      end
    end

    describe "reconfigure with new api key" do
      use_vcr_cassette
      before do
        @new_api_key = Balanced::ApiKey.new.save
        Balanced.configure @new_api_key.secret
      end

      describe "api key" do
        describe "merchant" do
          use_vcr_cassette
          subject { @api_key.merchant }
          it { should_not be_nil }
        end
      end

      describe "#client" do
        describe "#api_key" do
          subject { Balanced.client.api_key }
          it { should_not eql @api_key.secret }
          it { should eql @new_api_key.secret }
        end
      end

      describe "new api key" do
        describe "secret" do
          subject { @new_api_key.secret }
          it { should_not be_nil }

        end
        describe "merchant" do
          use_vcr_cassette

          subject { @new_api_key.merchant }
          it { should_not be_nil }
        end
      end
    end
  end
end
