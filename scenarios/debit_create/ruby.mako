% if mode == 'definition':
Balanced::Customer.debit()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/ACO702cHD2tPiOCRSKYzVf1')
customer.debit(
  :amount => '5000',
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
