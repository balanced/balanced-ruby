% if mode == 'definition':
Balanced::Customer.new

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.new.save

% endif
