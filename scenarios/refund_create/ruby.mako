% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

debit = Balanced::Debit.find('/debits/WD7roQdIDJuwCI0ZUxNRjp6w')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product',
    'merchant.feedback' => 'positive'
  }
)

% endif
