% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6z9hDVGj7utvQSiIhHuuhf')
credits = bank_account.credits
% elif mode == 'response':
[]

% endif
