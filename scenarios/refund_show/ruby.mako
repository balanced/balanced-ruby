% if mode == 'definition':
Balanced::Refund.find()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

refund = Balanced::Refund.find('/v1/customers/ACO702cHD2tPiOCRSKYzVf1/refunds/RF1cWzNKWwQnCCbeonFdLVkC')

% endif
