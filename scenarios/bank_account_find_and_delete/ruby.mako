% if mode == 'definition':

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5ONs53HNn1Od9g99v0GNFJ')
bank_account.destroy

% endif
