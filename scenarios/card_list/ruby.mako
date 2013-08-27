% if mode == 'definition':
Balanced::Marketplace.cards

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

cards = Balanced::Marketplace.my_marketplace.cards
% endif
