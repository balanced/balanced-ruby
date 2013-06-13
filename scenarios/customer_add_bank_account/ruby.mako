% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

customer = Balanced::Customer.find('/v1/customers/CU7KsM3n0uv9cqwm94E1enVB')
customer.add_bank_account("/v1/bank_accounts/BA7LMoiDtVIogA3dSCkb93xQ")

% endif
