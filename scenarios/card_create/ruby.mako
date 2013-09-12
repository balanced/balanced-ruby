% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

card = Balanced::Card.new(
  :uri => '/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/cards',
  :card_number => '5105105105105100',
  :expiration_month => '12',
  :expiration_year => '2020',
  :security_code => '123'
).save

% endif
