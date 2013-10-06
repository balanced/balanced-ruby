% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/debits/WDE7lu1wLfsf2JhWHYM6U2W')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% endif
