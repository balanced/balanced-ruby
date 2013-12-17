% if mode == 'definition':
Balanced::Callback.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

callbacks = Balanced::Callback.all
% endif
