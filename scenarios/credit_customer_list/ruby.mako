% if mode == 'definition':
Balanced::Customer.credits

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')


customer = Balanced::Customer.find('/v1/customers/CU6PXyMacKRYKNJPJFKtONK0')
credits = customer.credits

% endif
