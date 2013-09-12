% if mode == 'definition':
Balanced::Refund.find()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

refund = Balanced::Refund.find('/v1/customers/AC7uApw73nVe459gEQ4ynVJu/refunds/RF7DgCMEweMG2iUl2MYw56cn')

% endif
