% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA7sojXcP7oSdQyrjUA7wXg9')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
