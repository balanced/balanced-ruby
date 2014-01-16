% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6NK6SXBuIjbRn8NMhz1r1Z')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
