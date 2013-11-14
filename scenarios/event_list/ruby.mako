% if mode == 'definition':
    Balanced::Event.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace
events = Balanced::Event.all(:limit => 2)
% endif
