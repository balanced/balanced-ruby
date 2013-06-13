% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/debits/WD7pYB2uXq8QAZvVrvO1l2Oq')
debit.refund(
    :description => 'Refund for Order #1111',
    :meta => {:"fulfillment.item.condition"=>"OK", :"merchant.feedback"=>"positive", :"user.refund_reason"=>"not happy with product"}
)

% endif
