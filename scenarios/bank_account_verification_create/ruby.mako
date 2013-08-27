% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5BveXWeSilJaZGTX3P6g9x')
verification = bank_account.verify

% endif
