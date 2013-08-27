% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/credits/CR6lEmXFHCW9aNOoLQk9XjfG')
% endif
