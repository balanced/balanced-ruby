% if mode == 'definition':
Balanced::Credit.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

Balanced::Credit.all
% endif
