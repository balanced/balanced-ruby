% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

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
