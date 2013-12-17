% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

verification = Balanced::Verification.find('/verifications/BZ66KFcxpstfoU5nUFcWWcNY')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% endif
