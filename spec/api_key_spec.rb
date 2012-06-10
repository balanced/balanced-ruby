require "spec_helper"

describe Balanced::ApiKey do

  before :all do
    @key = Balanced::ApiKey.new.save
  end

  subject { @key }
  it { should_not be_nil }

  describe "#secret" do
    subject { @key.secret }
    it { should_not be_nil }
    it { should_not be_empty }
  end

  describe "#merchant" do
    subject { @key.merchant }
    it { should_not be_nil }
    it { should be_instance_of Balanced::Merchant }
  end

  describe "new key" do
    describe "before configure" do
      before do
        @new_key = Balanced::ApiKey.new.save
      end
      describe "#merchant" do
        subject { @new_key.merchant }
        it { should_not be_nil }
        it { should be_instance_of Balanced::Merchant }
      end
    end
    describe "after configure" do
      before do
        @new_key = Balanced::ApiKey.new.save
        Balanced.configure @new_key.secret
        @new_key = Balanced::ApiKey.new.save
      end
      describe "#merchant" do
        subject { @new_key.merchant }
        it { should_not be_nil }
        it { should be_instance_of Balanced::Merchant }
      end
    end

  end
end
