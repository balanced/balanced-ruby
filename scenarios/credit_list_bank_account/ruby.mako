% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA35XYq4oVujo1NADZ6vwCu4')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
