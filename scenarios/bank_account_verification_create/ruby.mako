% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5TaLtTXaScg7HD0begXep1')
verification = bank_account.verify

% endif
