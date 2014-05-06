% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CUxN95d3eKLokMS6CymVtIB')
customer.unstore

% elif mode == 'response':

% endif
