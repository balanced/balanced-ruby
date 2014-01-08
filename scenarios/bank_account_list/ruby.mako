% if mode == 'definition':
Balanced::BankAccount.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

Balanced::BankAccount.all

% endif
