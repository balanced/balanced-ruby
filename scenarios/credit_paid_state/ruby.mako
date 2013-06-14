% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

bank_account_info = {
:account_number => '9900000003',:name => 'Johann Bernoulli',:routing_number => '121000358',:type => 'checking',
}

credit = Balanced::Credit.new(
  :amount => 10000,
  :bank_account => bank_account_info
).save

% endif
