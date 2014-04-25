% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3PDwDCkdeC4OgPtPNwoCWl')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
