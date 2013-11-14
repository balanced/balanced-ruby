% if mode == 'definition':
Balanced::Credit.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

Balanced::Credit.all(:limit => 2)
% endif
