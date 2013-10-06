% if mode == 'definition':
Balanced::Account.new

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

account = Balanced::Marketplace.my_marketplace.create_account

% endif
