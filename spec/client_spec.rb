require "spec_helper"

describe "balanced client" do

  it "should allow setting and reading of the api_key" do
    client = Balanced::Client.new "miscreant"
    client.api_key.should eq("miscreant")
    client.api_key = "foo"
    client.api_key.should eq("foo")
  end

end
