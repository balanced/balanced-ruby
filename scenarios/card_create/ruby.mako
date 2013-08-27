% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

card = Balanced::Card.new(
  :uri => '/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/cards',
:card_number => '5105105105105100',
:expiration_month => '12',
:expiration_year => '2020',
:security_code => '123'
).save

% endif
