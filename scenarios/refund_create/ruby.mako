% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/debits/WD7omMnm45N2JcPZ6fcaRRgY')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% endif
