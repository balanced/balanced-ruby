% if mode == 'definition':
Balanced::Customer.refunds

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/CU6PXyMacKRYKNJPJFKtONK0')
refunds = customer.refunds
% endif
