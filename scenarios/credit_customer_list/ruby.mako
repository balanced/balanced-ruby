% if mode == 'definition':
Balanced::Customer.credits

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')


customer = Balanced::Customer.find('')
credits = customer.credits

% endif
