% if mode == 'definition':
Balanced::BankAccount.credits

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5S3reJdyJBbAYKepbneBe2')
credits = bank_account.credits
% endif
