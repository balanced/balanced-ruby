require "balanced"

describe "Balanced module" do
  before(:each) do
    Balanced.configure "some-secret"
  end

  it "should have a non-nil client" do
    Balanced.client.should_not eq(nil)
  end

  its "client should not have a nil conn" do
    Balanced.client.conn.should_not eq(nil)
  end

end