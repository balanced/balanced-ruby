require 'spec_helper'

describe Balanced::Resource, 'loading a resource and generating methods from the response body' do
  use_vcr_cassette

  before do
    make_marketplace
    @account = Balanced::Account.new(email: 'user@example.com', name: 'John Doe').save
  end

  it 'generates a predicate method' do
    @account.name?.should be_true
  end

  it 'generates a getter method' do
    @account.name.should == 'John Doe'
  end

  it 'generates a setter' do
    @account.name = 'Bob Bobberson'
    @account.name.should == 'Bob Bobberson'
  end
end