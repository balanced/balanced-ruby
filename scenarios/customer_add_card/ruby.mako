% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.find('/v1/customers/CU12eUdTk8OgEj7VbJVFeP0q')
response = customer.add_card('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/cards/CC15RAm6JJIEIae6bicvlWRw')

% endif
