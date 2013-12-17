% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card = Balanced::Card.new(
  :expiration_year => '2020',
  :expiration_month => '12',
  :number => '5105105105105100',
  :security_code => '123'
).save

% endif
