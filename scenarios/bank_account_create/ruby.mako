% if mode == 'definition':
Balanced::BankAccount.new

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :type => 'checking',
  :routing_number => '121000358',
  :name => 'Johann Bernoulli'
).save

% endif
