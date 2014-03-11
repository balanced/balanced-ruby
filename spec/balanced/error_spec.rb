require 'spec_helper'

describe Balanced::Error, '#response' do
  it 'sets the response in the initializer' do
    response = {:status => 200}
    Balanced::Error.new(response).response.should == response
  end
end

describe Balanced::Error, '#body' do
  it 'is constructed from the response[:body]' do
    response = {:body => {}}
    error = Balanced::Error.new(response)
    error.body.should == response[:body]
  end

  it 'defaults to an empty hash when no body is passed' do
    Balanced::Error.new({}).body.should == {}
  end

  describe 'generating methods from response keys' do
    before do
      response = {:body => {:errors => [{:foo => 'bar'}]}}
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
  its(:to_s) { should == 'ohnoe!' }
  its(:inspect) { should == '#<Balanced::StandardError: ohnoe!>' }
end

describe Balanced::UnassociatedCardError do
  let(:card) { Balanced::Card.new(:href => '/v1/marketplaces/123/cards/235') }

  subject do
    Balanced::UnassociatedCardError.new(card)
  end

  its(:message) do
    should == "The Balanced::Card with uri=#{card.attributes['uri']} is not associated to a customer"
  end
end

describe 'Fetch NotFound' do
  context 'href nil' do
    it do
      expect {
        Balanced::Customer.fetch()
      }.to raise_exception(Balanced::NotFound)
    end
  end

  context 'href empty string' do
    it do
      expect {
        Balanced::Customer.fetch("")
      }.to raise_exception(Balanced::NotFound)
    end
  end
end