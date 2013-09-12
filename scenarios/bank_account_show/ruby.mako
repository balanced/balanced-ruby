% if mode == 'definition':
Balanced::BankAccount.find()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA64dSsZGdvarB2a0Mx2qeqs')

% endif
