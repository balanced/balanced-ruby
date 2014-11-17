% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1D19WqGc3j78IAhFIkasQd')
credits = bank_account.credits
% elif mode == 'response':
[]

% endif
