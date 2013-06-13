% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

bank_account = Balanced::BankAccount.new(
:account_number => '9900000001',:name => 'Johann Bernoulli',:routing_number => '121000358',:type => 'checking',
).save

% endif
