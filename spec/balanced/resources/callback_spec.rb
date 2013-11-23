require 'spec_helper'

describe Balanced::Callback, :vcr do
  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
  end

  describe 'create', :vcr do
    before do
      @callback = Balanced::Callback.new(
          :url => 'http://www.example.com/balanced_callback'
      ).save
    end

    context 'check url' do
      subject { @callback.url }
      it { should eql 'http://www.example.com/balanced_callback' }
    end

  end

  describe 'delete', :vcr do
    before do
      @callback = Balanced::Callback.new(
          :url => 'http://www.example.com/balanced_callback'
      ).save
    end

    context 'delete' do
      it 'should delete without an error' do
        @callback.destroy
      end
    end
  end
end
