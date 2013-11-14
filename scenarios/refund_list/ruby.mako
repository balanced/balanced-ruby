% if mode == 'definition':
Balanced::Refund.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

refunds = Balanced::Refund.all(:limit => 2)
% endif
