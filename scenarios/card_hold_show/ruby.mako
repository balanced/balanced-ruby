% if mode == 'definition':
Balanced::CardHold.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card_hold = Balanced::CardHold.find('/card_holds/HL4H6T3mAyIDeFpfpS4j6a4M')

% endif
