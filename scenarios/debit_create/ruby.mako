% if mode == 'definition':
Balanced::Customer.debit()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.find('/v1/customers/CUuDKfPHvZhTmaNbEsg1BOO')
customer.debit(
  :amount => '5000',
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
