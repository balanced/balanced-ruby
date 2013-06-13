% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

bank_account_info = {
:account_number => '9900000000',:name => 'Johann Bernoulli',:routing_number => '121000358',:type => 'checking',
}

credit = Balanced::Credit.new(
  :amount => 10000,
  :bank_account => bank_account_info
).save

% endif
