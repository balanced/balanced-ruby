require 'spec_helper'

describe Balanced::CardHold, :vcr => true, :skip => true do

  before(:all) do
    api_key = Balanced::ApiKey.new.save
    Balanced.configure api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    @card = Balanced::Card.new(
        :number => '5105105105105100',
        :expiration_month => '12',
        :expiration_year => '2015'
    ).save
  end

  describe '#create', :vcr do

    subject do
      @card_hold = Balanced::CardHold.new(
          :href => @card.holds.href,
          :amount => 100,
          :currency => 'USD',
          :appears_on_statement_as => 'My Market.Place-13',
          :description => 'I be holding',
          :meta => {
              :campaign_id => SecureRandom.hex
          }
      ).save
    end

    it { should_not be_nil }
    its(:href) { should_not be nil }
    its(:description) { should eq('I be holding') }
    its(:appears_on_statement_as) { should eq('BAL*My Market.Place-13') }
    its(:amount) { should == 100 }
    its(:meta) {
      should_not be_nil
      should be_instance_of Hash
    }
    its(:currency) { should == 'USD' }
    its(:expires_at) { should_not be_nil }

    its(:debits) { should be_instance_of Balanced::Pager }
    its(:debit) { should be_nil }

    context '#card' do
      its('card.href') { should eql(@card.href) }
    end

  end

  describe '#capture', :vcr do
    before do
      @card_hold = Balanced::CardHold.new(
          :href => @card.holds.href,
          :amount => 100,
          :currency => 'USD',
          :appears_on_statement_as => 'My Market.Place-13',
          :description => 'I be holding',
          :meta => {
              :campaign_id => SecureRandom.hex
          }
      ).save
    end

    context 'with no arguments - should just create a debit' do
      subject { @card_hold.capture }
      it { should be_instance_of Balanced::Debit }
      its(:amount) { should eql @card_hold.amount }
      its(:appears_on_statement_as) { should eql @card_hold.appears_on_statement_as }
    end

    it "should update the card hold's debit" do
      @card_hold.debit.should be_nil
      debit = @card_hold.capture
      @card_hold.debit.should_not be_nil
      @card_hold.debit.href.should eql(debit.href)
    end

    it 'should fail when captured twice' do
      @card_hold.debit.should be_nil
      @card_hold.capture
      lambda { @card_hold.capture }.should raise_error(Balanced::Conflict)
    end
  end

  describe '#destroy', :vcr do
    before(:all) do
      @hold = @card.hold(:amount => 100)
      @hold_href = @hold.href
    end

    it 'should implicitly void the hold since it no longer exists' do
      @hold.destroy
    end

    it 'should return a 404 when trying to access it again' do
      lambda { Balanced::CardHold.find(@hold_href) }.should raise_error(Balanced::NotFound)
    end

  end

end
