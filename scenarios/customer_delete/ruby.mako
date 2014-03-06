% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU4EeI9UPzRcOo2C3j1qFjQj')
customer.unstore

% elif mode == 'response':

% endif
