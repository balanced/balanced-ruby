% if mode == 'definition':
Balanced::Debit.refund
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

debit = Balanced::Debit.find('/debits/WD37zVcnXTLbqAnTS3adRyDK')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product',
    'merchant.feedback' => 'positive'
  }
)

% endif
