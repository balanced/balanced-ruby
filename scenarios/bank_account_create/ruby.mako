% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :type => 'checking'
).save

% endif
