% if mode == 'definition':
Balanced::Order.new

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

order = Balanced::Order.new(
  :description => 'Order #12341234'
)
order.save
% endif
