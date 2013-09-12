% if mode == 'definition':
Balanced::Hold.all

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

marketplace = Balanced::Marketplace.my_marketplace

holds = Balanced::Hold.all(:limit => 2)
% endif
