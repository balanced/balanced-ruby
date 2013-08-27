% if mode == 'definition':
Balanced::Customer.refunds

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/ACO702cHD2tPiOCRSKYzVf1')
refunds = customer.refunds

% endif
