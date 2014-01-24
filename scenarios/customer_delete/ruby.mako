% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU3Ttx347VFA9lYT8dBOkwcu')
customer.unstore

% elif mode == 'response':

% endif
