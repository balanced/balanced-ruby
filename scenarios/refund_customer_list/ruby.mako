% if mode == 'definition':
Balanced::Customer.refunds

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

customer = Balanced::Customer.find('/v1/customers/AC7uApw73nVe459gEQ4ynVJu')
refunds = customer.refunds

% endif
