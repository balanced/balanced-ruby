% if mode == 'definition':
Balanced::BankAccount.credits

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA2lmvGmMFbpYcnTGrdtmlxk')
credits = bank_account.credits
% elif mode == 'response':
{}

% endif
