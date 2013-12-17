% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

verification = Balanced::Verification.find('/bank_accounts/BA65KGwEVvpb8MiJCGxzqzXW')

% endif
