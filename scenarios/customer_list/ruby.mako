% if mode == 'definition':
Balanced::Customer.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

customers = Balanced::Customer.all
% endif
