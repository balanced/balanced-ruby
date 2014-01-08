% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

customer = Balanced::Customer.find('/customers/CU5js3jbh1moYBqIE4gKmrCa')
customer.add_bank_account("")

% endif
