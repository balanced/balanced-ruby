% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/credits/CR6m6xbfRswklzk2LNPfuPgs')
% endif
