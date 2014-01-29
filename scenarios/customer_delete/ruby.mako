% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU3eeasZ9yQ86uzzIYZkrPGg')
customer.unstore

% elif mode == 'response':

% endif
