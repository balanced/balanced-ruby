% if mode == 'definition':
Balanced::CardHold.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

holds = Balanced::CardHold.all
% endif
