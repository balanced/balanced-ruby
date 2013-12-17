% if mode == 'definition':
Balanced::Order.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

order = Balanced::Order.find('/orders/OR2ZX6pUMpd51Gp1r4OVtxpI')

% endif
