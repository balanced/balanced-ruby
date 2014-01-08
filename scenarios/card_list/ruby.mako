% if mode == 'definition':
Balanced::Card.all
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

cards = Balanced::Card.all
% endif
