% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/debits/WD1aYGtAuoJxpGSUYr8jVlyy')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% endif
