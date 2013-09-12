% if mode == 'definition':
Balanced::Refund.save()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

refund = Balanced::Refund.find('/v1/customers/AC7uApw73nVe459gEQ4ynVJu/refunds/RF7DgCMEweMG2iUl2MYw56cn')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% endif
