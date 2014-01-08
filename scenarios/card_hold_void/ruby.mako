% if mode == 'definition':
Balanced::CardHold.void

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card_hold = Balanced::CardHold.find('/card_holds/HL4PV5q0qjZN6KS7VeoAtghq')
card_hold.void
% endif
