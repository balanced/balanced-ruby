% if mode == 'definition':
Balanced::Debit.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

debit = Balanced::Debit.find('/debits/WD6RU8XhLnVeid8euSqE9icE')
debit.description = 'New description for debit'
debit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
debit.save

% endif
