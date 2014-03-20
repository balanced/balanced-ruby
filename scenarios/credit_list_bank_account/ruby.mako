% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6JeIzD7zM6rmp0Nt8Mu9Sw')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
