% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

customer = Balanced::Customer.find('/customers/CU6Lrs5pCJsgrPu3hkWXHfDF')
customer.add_card('')

% endif
