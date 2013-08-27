% if mode == 'definition':
Balanced::Account.refunds

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

buyer = Balanced::Account.find('')
refunds = buyer.refunds
% endif
