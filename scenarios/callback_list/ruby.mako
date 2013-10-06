% if mode == 'definition':
Balanced::Callback.all

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace
callbacks = Balanced::Callback.all(:limit => 2)
% endif
