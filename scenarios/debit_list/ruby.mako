% if mode == 'definition':
Balanced::Debit.all

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

debits = Balanced::Debit.all(:limit => 2)
% endif
