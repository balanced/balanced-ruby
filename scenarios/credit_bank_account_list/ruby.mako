% if mode == 'definition':
Balanced::BankAccount.credits

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA4jgL1IYTPL1da2wmwdWvPp')
credits = bank_account.credits
% endif
