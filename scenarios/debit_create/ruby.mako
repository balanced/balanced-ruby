% if mode == 'definition':
Balanced::Customer.debit()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

customer = Balanced::Customer.find('/v1/customers/CU6W5pSk2CUXQxhENqyGRvQe')
customer.debit({:amount=>5000, :appears_on_statement_as=>"Statement text", :description=>"Some descriptive text for the debit in the dashboard"})

% endif
