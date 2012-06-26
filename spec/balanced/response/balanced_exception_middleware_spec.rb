require "spec_helper"
require "faraday"

describe Faraday::Response::RaiseBalancedError, :type => :response do
  context "when used" do
    let(:raise_server_error) { described_class.new }

  end

  context "integration test" do

    before(:each) do
      Faraday.register_middleware :response,
          :handle_balanced_errors => lambda { described_class }
      VCR.turn_off!
    end

    after(:each)  do
      VCR.turn_on!
    end

    let(:stubs) { Faraday::Adapter::Test::Stubs.new }
    let(:connection) do
      Faraday::Connection.new do |builder|
        builder.response :handle_balanced_errors
        builder.adapter :test, stubs
      end
    end

    it "should raise exceptions on client errors" do
      stubs.get("/error") {
        [400, {}, '']
      }

      lambda {
        connection.get('/error')
      }.should raise_error(Balanced::BadRequest)
    end

  end
end
