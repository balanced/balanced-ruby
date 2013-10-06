% if mode == 'definition':
Balanced::Refund.all

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

refunds = Balanced::Refund.all(:limit => 2)
% endif
