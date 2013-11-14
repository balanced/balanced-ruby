% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

card = Balanced::Card.new(
  :card_number => '5105105105105100',
  :expiration_month => '12',
  :expiration_year => '2020',
  :security_code => '123'
).save

% endif
