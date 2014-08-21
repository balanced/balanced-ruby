# debit_href is the stored href for the Debit
# order_href is the stored href for the Order
debit = Balanced::Debit.fetch(debit_href)
debit.refund(
  :amount => 3000,
  :description => 'Refund for Order #1111',
  :meta => {
    'merchant.feedback' => 'positive',
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product'
  },
  :order => order_href
)