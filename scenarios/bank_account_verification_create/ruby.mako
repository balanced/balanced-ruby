% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6czUjW6j4sMputedTuxXE6')
verification = bank_account.verify

% endif
