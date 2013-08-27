% if mode == 'definition':
Balanced::Customer.debit

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/AC73sGhakFEQQFbLDX6WSq9y')
customer.debit(:amount => '5000')

% endif
