require 'spec_helper'

describe Balanced::ApiKey do

  describe 'attributes', :vcr do

    before do
      @key = Balanced::ApiKey.new.save
    end

    describe '#secret' do
      subject { @key.secret }
      it { should_not be_nil }
      it { should_not be_empty }
    end

  end

end
