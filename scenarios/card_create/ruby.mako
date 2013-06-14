% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

card = Balanced::Card.new(
  :uri => '/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/cards',
:card_number => '5105105105105100',:expiration_month => '12',:expiration_year => '2020',:security_code => '123',
).save

% endif
