% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

bank_account_info = {
  :account_number => '9900000001',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :type => 'checking'
}

credit = Balanced::Credit.new(
  :amount => 10000,
  :bank_account => bank_account_info
).save

% endif
