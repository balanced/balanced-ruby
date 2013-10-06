% if mode == 'definition':
Balanced::Hold.all

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

holds = Balanced::Hold.all(:limit => 2)
% endif
