% if mode == 'definition':
Balanced::Debit.refund
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

debit = Balanced::Debit.find('/debits/WD5GpbUl5fK0muNmhL79DSFE')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% endif
