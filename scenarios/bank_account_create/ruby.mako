% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :type => 'checking'
).save

% endif
