% if mode == 'definition':
Balanced::Debit.all

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

debits = Balanced::Debit.all
% endif
