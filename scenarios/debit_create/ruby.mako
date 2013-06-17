% if mode == 'definition':
Balanced::Customer.debit()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

customer = Balanced::Customer.find('')
customer.debit({:amount=>5000, :appears_on_statement_as=>"Statement text", :description=>"Some descriptive text for the debit in the dashboard"})

% endif
