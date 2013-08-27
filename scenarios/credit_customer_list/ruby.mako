% if mode == 'definition':
Balanced::Customer.credits

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')


customer = Balanced::Customer.find('')
credits = customer.credits

% endif
