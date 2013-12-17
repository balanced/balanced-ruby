% if mode == 'definition':
Balanced::Event.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

events = Balanced::Event.all
% endif
