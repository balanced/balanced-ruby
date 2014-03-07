% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU64R7DS6DwuXYVg9RTskFK8')
customer.unstore

% elif mode == 'response':

% endif
