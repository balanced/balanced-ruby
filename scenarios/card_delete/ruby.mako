% if mode == 'definition':
Balanced::Card.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/cards/CC6NiW8huZV4AxYTDJsjOd7k')
card.unstore

% endif
