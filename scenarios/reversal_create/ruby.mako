% if mode == 'definition':
Balanced::Credit.reverse
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

reversal = Balanced::Credit.find('/credits/CR5QteIJS3LM0UdgRqV5pUDm')
credit.reverse(
  :description => 'Reversal for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% endif
