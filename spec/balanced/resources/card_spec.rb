require 'spec_helper'

describe Balanced::Card, '#debit', vcr: true, marketplace: true do
  it 'raises an exception with an unassociated' do
    card = Balanced::Card.new
    expect {
      card.debit
    }.to raise_error(Balanced::UnassociatedCardError)
  end
end

describe Balanced::Card, '#hold', vcr: true, marketplace: true do
  it 'raises an exception with an unassociated' do
    card = Balanced::Card.new
    expect {
      card.hold
    }.to raise_error(Balanced::UnassociatedCardError)
  end
end