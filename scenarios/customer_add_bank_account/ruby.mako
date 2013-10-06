% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

customer = Balanced::Customer.find('/v1/customers/CU7o5OSA8KuFSSjweE54NITe')
customer.add_bank_account("/v1/bank_accounts/BA7q1HxYvJr41fVUPk8vMrCm")

% endif
