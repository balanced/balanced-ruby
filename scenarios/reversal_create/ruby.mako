% if mode == 'definition':
Balanced::Credit.reverse
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

reversal = Balanced::Credit.find('/credits/CR3hmEx4zd5bOxenRMmHRfSg')
credit.reverse(
  :description => 'Reversal for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product',
    'merchant.feedback' => 'positive'
  }
)

% endif
