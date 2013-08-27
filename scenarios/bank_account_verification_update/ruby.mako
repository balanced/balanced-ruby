% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

verification = Balanced::Verification.find('/v1/bank_accounts/BA5LOM1tiKeY4HOVU9XqOpHi/verifications/BZ5OeVKxqc8c1ne4qZzi9LJl')

verification.amount_1 = 1

verification.amount_2 = 1

verification.save

% endif
