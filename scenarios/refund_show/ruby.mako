% if mode == 'definition':
Balanced::Refund.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

refund = Balanced::Refund.find('/v1/customers/CUuDKfPHvZhTmaNbEsg1BOO/refunds/RFHBiohkzkfO6RPYOrjc9US')

% endif
