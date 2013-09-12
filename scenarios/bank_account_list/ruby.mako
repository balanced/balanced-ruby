% if mode == 'definition':
Balanced::BankAccount.all

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

Balanced::BankAccount.all

% endif
