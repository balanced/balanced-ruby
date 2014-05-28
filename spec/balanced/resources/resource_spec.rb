require 'spec_helper'

describe Balanced::Resource do
  class ApiKey
    include Balanced::Resource::ClassMethods
  end

  before(:all) do
    @ak = ApiKey.new
  end

  describe 'construct_from_response' do
    it 'should return an instance of an ApiKey' do
      @payload = JSON.parse('{
                "links": {},
                "api_keys": [
                  {
                    "links": {},
                    "created_at": "2013-08-28T00:00:23.337278Z",
                    "secret": "d611bb800f7411e39f5d026ba7d79bff",
                    "href": "/api_keys/AK6vWygDNdcoQLHKdaHPtJ1B",
                    "meta": {},
                    "id": "AK6vWygDNdcoQLHKdaHPtJ1B"
                  }
                ]
              }')
      new_ak = @ak.construct_from_response @payload
      new_ak.should_not be_nil
      new_ak.should be_instance_of(Balanced::ApiKey)
    end
  end

  describe 'fetch' do
    it 'raises a Balanced::NotFound exception when called with no arguments' do
      expect { @ak.fetch() }.to raise_exception(Balanced::NotFound)
    end

    it 'raises a Balanced::NotFound exception when called with a nil first argument' do
      expect { @ak.fetch(nil) }.to raise_exception(Balanced::NotFound)
    end
  end
end
