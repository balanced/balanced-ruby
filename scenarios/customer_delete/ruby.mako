% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU4MnFEab304anOtUtEu5hkN')
customer.unstore

% elif mode == 'response':

% endif
