% if mode == 'definition':
Balanced::Credit.all

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

marketplace = Balanced::Marketplace.my_marketplace

Balanced::Credit.all(:limit => 2)
% endif
