% if mode == 'definition':
Balanced::Customer.find

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

customer = Balanced::Customer.find('/customers/CU6GnIEd3WcmOJJvZiPAEJag')
% endif
