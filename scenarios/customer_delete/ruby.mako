% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/customers/CU5js3jbh1moYBqIE4gKmrCa')
customer.unstore

% endif
