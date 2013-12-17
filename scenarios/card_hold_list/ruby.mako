% if mode == 'definition':
Balanced::CardHold.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

holds = Balanced::CardHold.all
% endif
