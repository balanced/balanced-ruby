% if mode == 'definition':
Balanced::Marketplace.cards

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

cards = Balanced::Marketplace.my_marketplace.cards
% endif
