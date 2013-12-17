% if mode == 'definition':
Balanced::Card.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card = Balanced::Card.find('/cards/CC6ox6OvhtUBEnDYE7UniVja')
card.unstore

% endif
