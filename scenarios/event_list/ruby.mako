% if mode == 'definition':
    Balanced::Event.all

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

marketplace = Balanced::Marketplace.my_marketplace
events = Balanced::Event.all(:limit => 2)
% endif
