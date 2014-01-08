% if mode == 'definition':
Balanced::Order.new

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

order = Balanced::Order.new(
  :description => 'Order #12341234'
)
order.save
% endif
