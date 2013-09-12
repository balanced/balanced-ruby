% if mode == 'definition':
Balanced::Marketplace.cards

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

cards = Balanced::Marketplace.my_marketplace.cards
% endif
