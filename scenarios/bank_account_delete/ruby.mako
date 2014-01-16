% if mode == 'definition':
Balanced::BankAccount.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA2lmvGmMFbpYcnTGrdtmlxk')
bank_account.unstore

% elif mode == 'response':

% endif
