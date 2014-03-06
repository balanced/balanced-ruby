% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3LBmizwthrjehivn2ffzHU')
bank_account.unstore

% elif mode == 'response':

% endif
