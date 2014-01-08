% if mode == 'definition':
Balanced::Order.all
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

orders = Balanced::Order.all
% endif
