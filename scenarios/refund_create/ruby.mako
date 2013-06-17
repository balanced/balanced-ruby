% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/debits/WD5uAv4hcfWPmB37xbtHkOTg')
debit.refund(
    :description => 'Refund for Order #1111',
    :meta => {:"fulfillment.item.condition"=>"OK", :"merchant.feedback"=>"positive", :"user.refund_reason"=>"not happy with product"}
)

% endif
