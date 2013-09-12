% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

verification = Balanced::Verification.find('/v1/bank_accounts/BA5UZTCGg2X6FxRRTDIEvYAU/verifications/BZ5WTqWoBKw3TwTXSbOZfNmU')

% endif
