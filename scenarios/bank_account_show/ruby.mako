% if mode == 'definition':
Balanced::BankAccount.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6wDj2MwJTwkPA4s4rEMq2y')

% endif
