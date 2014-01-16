% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.find('/customers/CU3icqpTA5n8LTkqcmRpwqPZ')
customer.unstore

% elif mode == 'response':

% endif
