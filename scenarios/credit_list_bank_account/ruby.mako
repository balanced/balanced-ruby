% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA8MzVwjVFnkuUvfHaXmqMZ')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
