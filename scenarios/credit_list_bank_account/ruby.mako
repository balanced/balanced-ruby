% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3LBmizwthrjehivn2ffzHU')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
