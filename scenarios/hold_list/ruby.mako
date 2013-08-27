% if mode == 'definition':
Balanced::Hold.all

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

holds = Balanced::Hold.all(:limit => 2)
% endif
