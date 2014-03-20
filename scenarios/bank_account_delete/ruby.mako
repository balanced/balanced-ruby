% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6JeIzD7zM6rmp0Nt8Mu9Sw')
bank_account.unstore

% elif mode == 'response':

% endif
