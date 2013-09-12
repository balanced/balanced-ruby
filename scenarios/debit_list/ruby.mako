% if mode == 'definition':
Balanced::Debit.all

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

marketplace = Balanced::Marketplace.my_marketplace

debits = Balanced::Debit.all(:limit => 2)
% endif
