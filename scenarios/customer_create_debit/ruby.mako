% if mode == 'definition':
Balanced::Customer.debit

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.find('/v1/customers/CU7wGDVh8FjYMPfkPl9SzWAu')
customer.debit(:amount => '5000')

% endif
