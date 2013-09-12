% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/v1/customers/AC6JFZyy8FN8rHX1xsg2ucKA')
customer.unstore

% endif
