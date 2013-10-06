% if mode == 'definition':
Balanced::Customer.holds

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.find('/v1/customers/CUcKunVjtvF7v8JlC5ZBdeM')
holds = customer.holds

% endif
