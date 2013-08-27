% if mode == 'definition':
Balanced::Customer.holds

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/AC8REMQqvuj8Kz8Yc3tpOPg')
holds = customer.holds

% endif
