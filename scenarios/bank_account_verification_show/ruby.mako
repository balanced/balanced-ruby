% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

verification = Balanced::Verification.find('/v1/bank_accounts/BA6jdVg9pWO5ePNdL8ucclXi/verifications/BZ6lvRngcv6BuAu5m5XZAx8A')

% endif
