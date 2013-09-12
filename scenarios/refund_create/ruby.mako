% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/debits/WD7C8yoy9dncfU1m9MW4Q5iv')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% endif
