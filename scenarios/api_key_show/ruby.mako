% if mode == 'definition':
Balanced::ApiKey.find
% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card = Balanced::ApiKey.find('/api_keys/AK611rgMxlKcCyuiIrHNqbM3')
% endif
