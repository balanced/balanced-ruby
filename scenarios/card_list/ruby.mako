% if mode == 'definition':
Balanced::Marketplace.cards

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

cards = Balanced::Marketplace.my_marketplace.cards
% endif
