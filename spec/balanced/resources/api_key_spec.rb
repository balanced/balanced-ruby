require "spec_helper"

describe Balanced::ApiKey do
  describe "attributes" do
    use_vcr_cassette
    before do
      @key = Balanced::ApiKey.new.save
    end
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
  end

  describe "new key" do
    use_vcr_cassette

    describe "before configure" do
      use_vcr_cassette
      before do
        @new_key = Balanced::ApiKey.new.save
      end
      describe "#merchant" do
        use_vcr_cassette
        subject { @new_key.merchant }
        it { should_not be_nil }
        it { should be_instance_of Balanced::Merchant }
      end
    end

    describe "after configure" do
      use_vcr_cassette
      before do
        @new_key = Balanced::ApiKey.new.save
        Balanced.configure @new_key.secret
        @new_key = Balanced::ApiKey.new.save
      end

      describe "#merchant" do
        use_vcr_cassette
        subject { @new_key.merchant }
        it { should_not be_nil }
        it { should be_instance_of Balanced::Merchant }
      end
    end

  end
end
