% if mode == 'definition':
Balanced::Customer.debit()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

customer = Balanced::Customer.find('/v1/customers/AC7uApw73nVe459gEQ4ynVJu')
customer.debit(
  :amount => '5000',
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
