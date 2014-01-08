% if mode == 'definition':
Balanced::Order.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

order = Balanced::Order.find('/orders/OR5AOoaQjkwOtqSHYre71kou')

% endif
