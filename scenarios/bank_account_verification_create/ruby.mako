% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6eYWlzH1IMkOpPYQjRNme4')
verification = bank_account.verify

% endif
