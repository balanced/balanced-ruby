% if mode == 'definition':
Balanced::CardHold.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card_hold = Balanced::CardHold.find('/card_holds/HL4H6T3mAyIDeFpfpS4j6a4M')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% endif
