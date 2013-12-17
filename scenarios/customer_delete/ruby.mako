% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/customers/CU6Lrs5pCJsgrPu3hkWXHfDF')
customer.unstore

% endif
