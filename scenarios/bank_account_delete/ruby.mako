% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA4618Qce3oQq7sbuk5JMWeI')
bank_account.unstore

% elif mode == 'response':

% endif
