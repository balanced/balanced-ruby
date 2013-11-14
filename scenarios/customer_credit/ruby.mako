% if mode == 'definition':
Balanced::Customer.credit

% else:
customer = Balanced::Customer.find('/v1/customers/CU5f64LhFMO8cf7N1sQSRVOo')
customer.credit(:amount => 100)

% endif
