% if mode == 'definition':
Balanced::Order.all
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

orders = Balanced::Order.all
% endif
