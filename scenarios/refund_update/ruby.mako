% if mode == 'definition':
Balanced::Refund.save()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

refund = Balanced::Refund.find('/v1/customers/ACO702cHD2tPiOCRSKYzVf1/refunds/RF1cWzNKWwQnCCbeonFdLVkC')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% endif
