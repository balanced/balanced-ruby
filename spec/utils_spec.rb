require "spec_helper"

describe "the utils module" do
  it "should correctly translate underscored names" do
    result = Balanced::Utils.camelize "api_key"
    result.should eq("ApiKey")
  end
end
