require 'spec_helper'

describe Balanced::Debit, :vcr do

  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
  end

  describe '#create', :vcr do

    describe 'one time debit', :vcr do
      subject do
        debit = Balanced::Debit.new(
            :amount => 1234,
            :source => {
                :number => '5105105105105100',
                :expiration_month => '12',
                :expiration_year => '2015'
            })
        debit.save
      end
      it { should_not be_nil }
      it { should be_instance_of Balanced::Debit }

      its(:href) { should_not be_nil }
      its(:amount) { should eql 1234 }
      its(:appears_on_statement_as) { should eql 'BAL*example.com' }
      its(:description) { should be_nil }
      its(:status) { should eql 'succeeded' }
    end

    describe 'from a customer', :vcr do
      before do
        @customer = Balanced::Customer.new.save
        @card = Balanced::Card.new(
            :number => '5105105105105100',
            :expiration_month => '12',
            :expiration_year => '2020'
        ).save
        @card.associate_to_customer(@customer)
        @customer.add_source(@card)
      end

      context 'tokenized card', :vcr do
        subject do
          @card.debit(:amount => 1234)
        end
        it { should be_instance_of Balanced::Debit }
        its(:href) { should_not be_nil }
        its(:amount) { should eql 1234 }
        its(:appears_on_statement_as) { should eql "BAL*#{@marketplace.domain_url}" }
        its(:description) { should be_nil }
        its(:status) { should eql 'succeeded' }
        its(:source) { should be_instance_of Balanced::Card }
        its('source.href') { should match "#{@card.href}" }
      end

    end
  end

  describe '#refund', :vcr do
    before do
      @meta = {"order_id" => "11111"}
    end
    subject do
      debit = Balanced::Debit.new(
          :amount => 1234,
          :source => {
              :number => '5105105105105100',
              :expiration_month => '12',
              :expiration_year => '2015'
          },
          :meta => @meta)
      debit.save
      refund = debit.refund({:meta => @meta})
      refund
    end

    it { should_not be_nil }
    it { should be_instance_of Balanced::Refund }
    its(:amount) { should eql 1234 }
    its(:meta) {should eq @meta}

  end
end
