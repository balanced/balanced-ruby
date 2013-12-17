% if mode == 'definition':
Balanced::Card.all
% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

cards = Balanced::Card.all
% endif
