% if mode == 'definition':
Balanced::Customer.holds

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

customer = Balanced::Customer.find('/v1/customers/AC7dx1IBJGzHjr579XEZAvLc')
holds = customer.holds

% endif
