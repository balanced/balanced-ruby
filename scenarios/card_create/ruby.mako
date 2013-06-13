% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

card = Balanced::Card.new(
  :uri => '/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/cards',
:card_number => '5105105105105100',:expiration_month => '12',:expiration_year => '2020',:security_code => '123',
).save

% endif
