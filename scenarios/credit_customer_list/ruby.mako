% if mode == 'definition':
Balanced::Customer.credits

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')


customer = Balanced::Customer.find('/v1/customers/CU6bg92aGrSXuWUF6usdhBbw')
credits = customer.credits

% endif
