% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU56PvhKAwSiV6LahZCcBMJ7')
customer.unstore

% elif mode == 'response':

% endif
