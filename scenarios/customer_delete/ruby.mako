% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU40AyvBB6ny9u3oelCwyc3C')
customer.unstore

% elif mode == 'response':

% endif
