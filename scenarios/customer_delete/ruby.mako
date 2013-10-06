% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/v1/customers/CU7tcMPhFkoiaOjRkmmdBhXO')
customer.unstore

% endif
