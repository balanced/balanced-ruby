% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

verification = Balanced::Verification.find('/v1/bank_accounts/BA5uvDqG8xk4bGmwX3JTbIee/verifications/BZ5wpXXDTZxqLCHiX6V4XXvA')

verification.amount_1 = 1

verification.amount_2 = 1

verification.save

% endif
