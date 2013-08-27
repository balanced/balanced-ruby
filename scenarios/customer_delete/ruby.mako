% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/v1/customers/AC6YytlZWy1ECh6PGUXxqeFy')
customer.unstore

% endif
