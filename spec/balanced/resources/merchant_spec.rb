require 'spec_helper'

describe Balanced::Merchant, '.uri' do
  subject { Balanced::Merchant }
  its(:uri) { should == '/v1/merchants' }
end