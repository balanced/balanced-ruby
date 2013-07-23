% if mode == 'definition':
Balanced::BankAccount.unstore

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA4eTWiY1VPXkGpjaU6XPBhu')
bank_account.unstore

% endif
