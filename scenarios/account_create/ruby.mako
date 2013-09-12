% if mode == 'definition':
Balanced::Account.new

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

account = Balanced::Marketplace.my_marketplace.create_account

% endif
