% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6z9hDVGj7utvQSiIhHuuhf')
bank_account.unstore

% elif mode == 'response':

% endif
