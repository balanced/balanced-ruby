% if mode == 'definition':
Balanced::Customer.debit

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

customer = Balanced::Customer.find('/v1/customers/AC6M5tIyndBqrv4fEdubPUhg')
customer.debit(:amount => '5000')

% endif
