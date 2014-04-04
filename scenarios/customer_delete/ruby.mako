% if mode == 'definition':
Balanced::Customer.unstore

% elif mode == 'request':
customer = Balanced::Customer.fetch('/customers/CU116TOiXnCfxHyDErDcMtpU')
customer.unstore

% elif mode == 'response':

% endif
