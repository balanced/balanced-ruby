% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA4p71EIOhci5Z6leAjFthCq')
verification = bank_account.verify

% endif
