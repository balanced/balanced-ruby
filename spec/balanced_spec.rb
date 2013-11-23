require 'spec_helper'

describe Balanced do
  describe 'configuring the faraday http adapter' do
    it 'sets it to net http when nothing is passed in' do
      client = Balanced.configure 'secret'
      client.conn.builder.handlers.should include Faraday::Adapter::NetHttp
    end

    it 'allows the user to set it' do
      client = Balanced.configure 'secret', :faraday_adapter => :net_http_persistent
      client.conn.builder.handlers.should include Faraday::Adapter::NetHttpPersistent
      client.conn.builder.handlers.should_not include Faraday::Adapter::NetHttp
    end
  end

  describe 'configure', :vcr do
    before do
      @api_key = Balanced::ApiKey.new.save

      Balanced.configure @api_key.secret
    end

    describe '#client' do
      subject { Balanced.client }
      it { should_not be_nil }

      describe '#connection' do
        subject { Balanced.client.conn }
        it { should_not be_nil }
      end

      describe '#api_key' do
        subject { Balanced.client.api_key }
        it { should eql @api_key.secret }
      end

      describe '#url' do
        subject { Balanced.client.url.to_s }
        it { should satisfy { |s|
          %w(https://api.balancedpayments.com http://localhost:5000).include?(s)
        } }
      end
    end

    describe 'reconfigure with new api key', :vcr do
      before do
        @new_api_key = Balanced::ApiKey.new.save
        Balanced.configure @new_api_key.secret
      end

      describe '#client' do
        describe '#api_key' do
          subject { Balanced.client.api_key }
          it { should_not eql @api_key.secret }
          it { should eql @new_api_key.secret }
        end
      end

      describe 'new api key' do
        describe 'secret' do
          subject { @new_api_key.secret }
          it { should_not be_nil }
        end
      end
    end
  end
end

describe Balanced, '.from_uri' do
  it 'returns BankAccount for a bank_accounts collection nested under a marketplace' do
    Balanced.from_href('/v1/marketplaces/123/bank_accounts').should == Balanced::BankAccount
  end

  it 'returns BankAccount for an individual bank account nested under a marketplace' do
    Balanced.from_href('/v1/marketplaces/123/bank_accounts/456').should == Balanced::BankAccount
  end

  it 'returns BankAccount for a root-level bank account collection resource' do
    Balanced.from_href('/v1/bank_accounts').should == Balanced::BankAccount
  end

  it 'returns BankAccount for a root-level bank account individual resource' do
    Balanced.from_href('/v1/bank_accounts/123').should == Balanced::BankAccount
  end
end
