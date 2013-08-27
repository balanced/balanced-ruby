% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

verification = Balanced::Verification.find('/v1/bank_accounts/BA5Frg9td6vFAzSIwx9aShjW/verifications/BZ5IyyZBbFCVWMaNzHwiq5bx')

% endif
