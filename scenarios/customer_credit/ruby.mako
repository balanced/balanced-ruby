% if mode == 'definition':
Balanced::Customer.credit

% else:
customer = Balanced::Customer.find('/v1/customers/AC6vNITlEx4Uq6NM04q9ykre')
customer.credit(:amount => '100')

% endif
