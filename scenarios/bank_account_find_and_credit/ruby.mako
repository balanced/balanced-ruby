% if mode == 'definition':


% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA7LMoiDtVIogA3dSCkb93xQ')
bank_account.credit('1000')

% endif