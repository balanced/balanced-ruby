% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

verification = Balanced::Verification.find('/v1/bank_accounts/BA6h13dSUEsvVjbhFd2MqdmT/verifications/BZ6hHnC9dKqiQJJtuxbp7SGP')

% endif
