% if mode == 'definition':
Balanced::Customer.refunds

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.find('/v1/customers/CUuDKfPHvZhTmaNbEsg1BOO')
refunds = customer.refunds

% endif
