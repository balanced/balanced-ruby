% if mode == 'definition':
Balanced::BankAccount.credit

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA6wDj2MwJTwkPA4s4rEMq2y')
bank_account.credit(:amount => '10000')
% endif
