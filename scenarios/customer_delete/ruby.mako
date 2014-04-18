% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU1eX3FIMntmCLmi2VfWA2db')
customer.unstore

% elif mode == 'response':

% endif
