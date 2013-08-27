% if mode == 'definition':
Balanced::Credit.all

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

Balanced::Credit.all(:limit => 2)
% endif
