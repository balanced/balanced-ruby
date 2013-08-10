% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/v1/customers/CU6PXyMacKRYKNJPJFKtONK0')
customer.unstore

% endif
