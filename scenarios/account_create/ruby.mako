% if mode == 'definition':
Balanced::Account.new

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

account = Balanced::Marketplace.my_marketplace.create_account

% endif
