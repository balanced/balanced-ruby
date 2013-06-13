% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/credits/CR6HPyOqdWtPuNdeHJFd7ybY')
% endif
