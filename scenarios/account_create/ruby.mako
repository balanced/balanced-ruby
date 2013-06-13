% if mode == 'definition':
Balanced::Account.new

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

account = Balanced::Marketplace.my_marketplace.create_account

% endif
