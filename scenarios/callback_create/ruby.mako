% if mode == 'definition':
Balanced::Callback.new
% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% endif
