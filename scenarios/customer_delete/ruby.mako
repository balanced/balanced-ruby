% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU7HlonBKQXhBkwRJdO2kZen')
customer.unstore

% elif mode == 'response':

% endif
