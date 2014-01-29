% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1QFf0LmIxr8p41msqX46Oy')
bank_account.unstore

% elif mode == 'response':

% endif
