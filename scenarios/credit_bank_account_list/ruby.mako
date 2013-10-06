% if mode == 'definition':
Balanced::BankAccount.credits

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6wDj2MwJTwkPA4s4rEMq2y')
credits = bank_account.credits
% endif
