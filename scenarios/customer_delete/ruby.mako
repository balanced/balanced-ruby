% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU7yoUz1HuDE7t7p9GcVNYbz')
customer.unstore

% elif mode == 'response':

% endif
