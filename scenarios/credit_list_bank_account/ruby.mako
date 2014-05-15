% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2EmblHC08bmwiwwNrbI0Rj')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
