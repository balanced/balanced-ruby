% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6NK6SXBuIjbRn8NMhz1r1Z')
bank_account.unstore

% elif mode == 'response':

% endif
