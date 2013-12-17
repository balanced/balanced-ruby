% if mode == 'definition':
Balanced::Refund.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

refunds = Balanced::Refund.all
% endif
