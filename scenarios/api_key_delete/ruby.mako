% if mode == 'definition':
Balanced::ApiKey.unstore
% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card = Balanced::ApiKey.unstore

% endif
