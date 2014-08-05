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
    @card.debit(:amount => 1000000)
  end

  describe 'card', :vcr do
    describe 'standard card' do
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
        its(:can_credit) { should eql false }
        its(:can_debit) { should eql true }
        its(:bank_name) { should eql 'BANK OF HAWAII' }
      end
    end

    describe 'card that can be credited' do
      before do
        @push_card = Balanced::Card.new(
          :name => 'Johannes Bach',
          :number => '4342561111111118',
          :expiration_month => '05',
          :expiration_year => '2015',
          :cvv => '123'
        ).save
      end

      it 'should be a Balanced::Card' do
        @push_card.should be_instance_of Balanced::Card
      end

      describe 'attributes', :vcr do
        subject { @push_card }
        its(:href) { should match "/cards/#{@push_card.id}" }
        its(:number) { should end_with '1118' }
        its(:expiration_month) { should eql 05 }
        its(:expiration_year) { should eql 2015 }
        its(:cvv) { should eql 'xxx' }
        its(:cvv_match) { should eql 'yes' }
        its(:cvv_result) { should eql 'Match' }
        its(:can_credit) { should eql true }
        its(:can_debit) { should eql true }
        its(:bank_name) { should eql 'WELLS FARGO BANK, N.A.' }
        its(:category) { should eql 'other' }
        its(:class) { should eql Balanced::Card }
      end

      describe '#credit' do
        before do
          @meta = {
            'invoice_id' => '1024'
          }
          @credit = @push_card.credit(
            :amount => 1234,
            :description => 'Some descriptive text',
            :meta => @meta
          )
        end

        describe 'attributes', :vcr do
          let(:the_credit) { @credit }

          it 'should have valid attributes' do
            expect(the_credit.href).to eq("/credits/#{@credit.id}")
            expect(the_credit.amount).to eq(1234)
            expect(the_credit.meta).to eq(@meta)
            expect(the_credit.status).to eq('succeeded')
          end
        end
      end
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
