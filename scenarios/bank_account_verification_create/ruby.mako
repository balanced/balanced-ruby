% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5gy1b8X8dIGaBWFuoWvkxO')
verification = bank_account.verify

% endif
