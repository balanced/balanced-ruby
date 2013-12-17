% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

credit = Balanced::Credit.find('/credits/CR6x7BgJcM3crRTYfyW9krYI')
credit.description = 'New description for credit'
credit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
credit.save

% endif
