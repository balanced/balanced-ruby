% if mode == 'definition':
Balanced::Customer.new

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

customer = Balanced::Customer.new.save

% endif
