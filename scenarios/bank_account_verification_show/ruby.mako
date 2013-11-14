% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

verification = Balanced::Verification.find('/v1/bank_accounts/BA5nW8SMsXjaU3GVWdhR9d60/verifications/BZ5rcuNvebC49kZyTGAaJu2A')

% endif
