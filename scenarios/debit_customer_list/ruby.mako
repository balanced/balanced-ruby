% if mode == 'definition':
Balanced::Customer.debits

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')


customer = Balanced::Customer.find('/v1/customers/AC73sGhakFEQQFbLDX6WSq9y')
debits = customer.debits

% endif
