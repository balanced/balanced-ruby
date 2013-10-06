% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

verification = Balanced::Verification.find('/v1/bank_accounts/BA6nZLdijPKzQ8RhJNnN1OD6/verifications/BZ6s3ghAmwY5BhnJIrCKSkUo')

verification.amount_1 = 1

verification.amount_2 = 1

verification.save

% endif
