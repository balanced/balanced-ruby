% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

bank_account = Balanced::BankAccount.new(
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :account_number => '9900000001',
  :type => 'checking'
).save

% endif
