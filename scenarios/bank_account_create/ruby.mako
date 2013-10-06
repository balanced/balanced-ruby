% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :type => 'checking'
).save

% endif
