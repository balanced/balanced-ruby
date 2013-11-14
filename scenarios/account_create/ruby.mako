% if mode == 'definition':
Balanced::Account.new

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

account = Balanced::Marketplace.my_marketplace.create_account

% endif
