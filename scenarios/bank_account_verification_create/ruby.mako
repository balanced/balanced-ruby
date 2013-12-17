% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA65KGwEVvpb8MiJCGxzqzXW')
verification = bank_account.verify

% endif
