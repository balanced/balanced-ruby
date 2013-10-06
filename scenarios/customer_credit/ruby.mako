% if mode == 'definition':
Balanced::Customer.credit

% else:
customer = Balanced::Customer.find('/v1/customers/CU6bg92aGrSXuWUF6usdhBbw')
customer.credit(:amount => '100')

% endif
