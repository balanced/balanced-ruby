% if mode == 'definition':
Balanced::Customer.hold

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

customer = Balanced::Customer.find('/v1/customers/CU7GuPv9Y2F8ySwJHuHL0YWq')
customer.hold(:amount => '1000')

% endif
