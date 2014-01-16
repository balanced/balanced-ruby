% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.find('/customers/CU5yzA5nhWv5Ljlr1ZEaYia')
customer.unstore

% elif mode == 'response':

% endif
