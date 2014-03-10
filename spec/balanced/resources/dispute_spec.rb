require 'spec_helper'
require 'vcr'

describe Balanced::Dispute, :vcr do

  before(:all) do
    VCR.use_cassette('dispute', :record => :new_episodes) do
        api_key = Balanced::ApiKey.new.save
        Balanced.configure api_key.secret
        @marketplace = Balanced::Marketplace.new.save
        @card = Balanced::Card.new(
            :number => '6500000000000002',
            :expiration_month => '12',
            :expiration_year => '2020',
            :cvv => '123'
        ).save
        @debit = @card.debit(:amount => 5566)
    end

    puts <<-NOTICE
### Notice ###
It takes a while before the dispute record created, 
take and nap and wake up, then it should be done :/ 
(last time I tried it took 10 minutes...)
    NOTICE
    timeout = 12 * 60
    interval = 10
    begin_time = Time.now
    while true
        @dispute = Balanced::Dispute.find(:first)
        if @dispute
            break
        end
        elapsed_time = Time.now - begin_time
        if elapsed_time > timeout
            # TODO: use a better error to raise?
            raise RuntimeError, 'timeout'
        end
        puts "Polling disputes..., elapsed #{ elapsed_time }"
        sleep(interval)
    end
  end

  describe 'dispute', :vcr do
    it 'should be a Balanced::Dispute' do
      @dispute.should be_instance_of Balanced::Dispute
    end

    describe 'attributes', :vcr do
      subject { @dispute }
      its(:href) { should match "/disputes/#{ @dispute.id }" }
      its(:status) { should match "pending" }
      its(:reason) { should match "fraud" }
      its(:amount) { should eq 5566 }
    end

    describe '#transaction', :vcr do
      subject { @dispute }
      its(:transaction) { should be_instance_of Balanced::Debit }
      its('transaction.href') { should eq(@debit.href) }
    end

  end

end
