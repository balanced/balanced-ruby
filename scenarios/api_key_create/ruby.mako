% if mode == 'definition':
Balanced::ApiKey.new

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

key = Balanced::ApiKey.new.save

% endif
