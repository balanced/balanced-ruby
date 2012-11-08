require 'spec_helper'

describe Balanced::Error, '#response' do
  it "sets the response in the initializer" do
    response = {status: 200}
    Balanced::Error.new(response).response.should == response
  end
end

describe Balanced::Error, '#body' do
  it 'is constructed from the response[:body]' do
    response = {body: {}}
    error = Balanced::Error.new(response)
    error.body.should == response[:body]
  end

  it "defaults to an empty hash when no body is passed" do
    Balanced::Error.new({}).body.should == {}
  end

  describe "generating methods from response keys"  do
    before do
      response = {body: {foo: 'bar'}}
      @error = Balanced::Error.new(response)
    end

    it 'generates a getter for each key' do
      @error.foo.should == 'bar'
    end

    it 'generates a predicate method' do
      @error.foo?.should be_true
    end
  end
end

describe Balanced::StandardError do
  subject { Balanced::StandardError.new('ohnoe!') }

  its(:message) { should == 'ohnoe!' }
  its(:error_message) { should == 'ohnoe!' }
end