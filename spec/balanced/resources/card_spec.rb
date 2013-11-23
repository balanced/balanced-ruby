require 'spec_helper'

describe Balanced::Card, :vcr do

  before do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    @card = Balanced::Card.new(
        :number => '5105105105105100',
        :expiration_month => '12',
        :expiration_year => '2020',
        :cvv => '123'
    ).save
  end

  describe 'card', :vcr do
    it 'should be a Balanced::Card' do
      @card.should be_instance_of Balanced::Card
    end

    describe 'attributes', :vcr do
      subject { @card }
      its(:href) { should match "/cards/#{@card.id}" }
      its(:number) { should end_with '5100' }
      its(:expiration_month) { should eql 12 }
      its(:expiration_year) { should eql 2020 }
      its(:cvv) { should eql 'xxx' }
      its(:cvv_match) { should eql 'yes' }
      its(:cvv_result) { should eql 'Match' }
    end

    describe 'creating a one-time debit', :vcr => {:record => :new_episodes} do
      subject do
        @card.debit(
            :amount => 100,
            :appears_on_statement_as => 'A lolipop',
            :description => 'My first debit!'
        )
      end
      it { should_not be_nil }
      it { should be_instance_of Balanced::Debit }

      its(:href) { should_not be_nil }
      its(:amount) { should eql 100 }
      its(:appears_on_statement_as) { should eql 'BAL*A lolipop' }
      its(:description) { should eql 'My first debit!' }
      its(:status) { should eql 'succeeded' }
    end

    describe 'creating a one-time hold', :vcr => true, :skip => true do
      subject do
        @card.hold(
            :amount => 100,
            :appears_on_statement_as => 'HOLD.UP',
            :description => 'HeldForEver'
        )
      end
      it { should_not be_nil }
      it { should be_instance_of Balanced::CardHold }

      its(:href) { should_not be_nil }
      its(:amount) { should eql 100 }
      its(:description) { should eql 'HeldForEver' }
      its(:appears_on_statement_as) { should eql 'BAL*HOLD.UP' }
    end

    describe '#debits', :vcr do
      subject do
        @card.debits
      end
      its(:href) { should eq("/cards/#{@card.id}/debits") }
      it 'should be a page' do
        should be_instance_of Balanced::Pager
      end
    end

    describe '#holds', :vcr => true, :skip => true do
      subject do
        @card.holds
      end

      its(:href) { should eq("/cards/#{@card.id}/card_holds") }

      it 'should be a page' do
        should be_instance_of Balanced::Pager
      end
    end

    describe '#customer', :vcr do

      it 'should default to nil' do
        @card.customer.should be_nil
      end

      context 'after associating to a customer' do
        before do
          @customer = Balanced::Customer.new.save
          @card.associate_to_customer(@customer)
          @card.reload
        end
        subject { @card }
        its(:customer) { should_not be_nil }
      end

    end

  end

end
