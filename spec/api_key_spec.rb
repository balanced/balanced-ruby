require "balanced"

describe "ApiKey Resource" do
  before(:each) do
    Balanced.configure
  end

  it "should create my api key " do
    key = Balanced::ApiKey.new.save
    key.should_not eq(nil)
  end

end