% if mode == 'definition':
Balanced::Debit.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

debit = Balanced::Debit.find('/debits/WD6RU8XhLnVeid8euSqE9icE')

% endif
