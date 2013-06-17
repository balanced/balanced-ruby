% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/CU5NTZ8MGBW3x8Axx8fTzgeQ')
customer.add_bank_account("/v1/bank_accounts/BA5ONs53HNn1Od9g99v0GNFJ")

% endif
