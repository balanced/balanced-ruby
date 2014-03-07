% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA58WYAEUMrEtAkW5KAvWo5V')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
