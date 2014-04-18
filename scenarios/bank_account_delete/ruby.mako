% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA8MzVwjVFnkuUvfHaXmqMZ')
bank_account.unstore

% elif mode == 'response':

% endif
