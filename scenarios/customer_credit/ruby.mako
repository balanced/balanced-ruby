% if mode == 'definition':
Balanced::Customer.credit

% else:
customer = Balanced::Customer.find('/v1/customers/AC6xddA9naLGxrOBkAig9b4a')
customer.credit(:amount => '100')

% endif
