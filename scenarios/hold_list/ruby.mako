% if mode == 'definition':
Balanced::Hold.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

holds = Balanced::Hold.all(:limit => 2)
% endif
