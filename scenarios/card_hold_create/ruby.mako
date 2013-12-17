% if mode == 'definition':
Balanced::Card.hold

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card = Balanced::Card.find('/cards/CC6ox6OvhtUBEnDYE7UniVja')
card.hold(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)
% endif
