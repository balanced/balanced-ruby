% if mode == 'definition':
Balanced::Customer.credit

% else:
customer = Balanced::Customer.find('/v1/customers/CU6PXyMacKRYKNJPJFKtONK0')
customer.credit(:amount => '100')

% endif
