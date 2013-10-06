% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

bank_account_info = {
  :account_number => '9900000002',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :type => 'checking'
}

credit = Balanced::Credit.new(
  :amount => 10000,
  :bank_account => bank_account_info
).save

% endif
