% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

bank_account = Balanced::BankAccount.new(
:account_number => '9900000001',
:name => 'Johann Bernoulli',
:routing_number => '121000358',
:type => 'checking'
).save

% endif
