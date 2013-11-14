% if mode == 'definition':
Balanced::Customer.debit()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

customer = Balanced::Customer.find('/v1/customers/CU7gMTGKh2yGHYn1lUxH9STS')
customer.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
