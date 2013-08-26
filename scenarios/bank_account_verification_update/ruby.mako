% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

verification = Balanced::Verification.find('/v1/bank_accounts/BA4tfzTrmuV1wXzXGg8Nf2t0/verifications/BZ4tXRVE6BovN95NQN1AsIKr')

verification.amount_1 = 1
verification.amount_2 = 1
verification.save

% endif
