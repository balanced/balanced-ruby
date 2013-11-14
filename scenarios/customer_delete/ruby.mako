% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/v1/customers/CU6sqf8CB3M3l6VeSsBqVHhC')
customer.unstore

% endif
