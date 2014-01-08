% if mode == 'definition':
Balanced::BankAccount.credit

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA5p2b3C5BQEsw3p79vylaM8')
bank_account.credit(:amount => 2000)
% endif
