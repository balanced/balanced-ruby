% if mode == 'definition':
Balanced::BankAccount.destroy

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA64BU1PUa8MKCAg0omlaNwm')
bank_account.destroy

% endif
