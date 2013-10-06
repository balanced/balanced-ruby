% if mode == 'definition':
Balanced::BankAccount.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6nZLdijPKzQ8RhJNnN1OD6')
bank_account.unstore

% endif
