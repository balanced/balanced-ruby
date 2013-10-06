% if mode == 'definition':
    Balanced::Event.all

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace
events = Balanced::Event.all(:limit => 2)
% endif
