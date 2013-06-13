% if mode == 'definition':
Balanced::Card.find()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/cards/CC6mSyhNe9lAcrUYtqAxHi1i')
% endif
