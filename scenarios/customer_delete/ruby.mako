% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.find('/customers/CU546zhmBDn3NEMyP7qXHqe4')
customer.unstore

% elif mode == 'response':

% endif
