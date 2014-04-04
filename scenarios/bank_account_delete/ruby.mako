% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA4BWUWGpCUSJoo0e9EiFE2')
bank_account.unstore

% elif mode == 'response':

% endif
