% if mode == 'definition':
Balanced::BankAccount.find()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6aflmsJEE7FldgQGpsgW0u')

% endif
