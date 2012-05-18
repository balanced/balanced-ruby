require "balanced"

describe "ApiKey Resource" do
  before(:each) do
    Balanced.configure
  end

  it "should create my api key and let me access it" do
    key = Balanced::ApiKey.new.save
    key.should_not eq(nil)
    # make sure my secret is there.
    key.secret.should_not eq(nil)
  end

end