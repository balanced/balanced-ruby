% if mode == 'definition':
Balanced::Customer.new

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.new.save

% endif
