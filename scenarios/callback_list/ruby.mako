% if mode == 'definition':
Balanced::Callback.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace
callbacks = Balanced::Callback.all(:limit => 2)
% endif
