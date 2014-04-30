% if mode == 'definition':
Balanced::Debit.refund
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

debit = Balanced::Debit.fetch('/debits/WDEg9ofx83CeAhiwI1QmA17')
debit.refund(
  :amount => 3000,
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% elif mode == 'response':
#<Balanced::Refund:0x007fb60b36a330
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-25T22:01:00.249873Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RFFFulVVpBiNWpJ2VLMto1L",
   "id"=>"RFFFulVVpBiNWpJ2VLMto1L",
   "links"=>{"debit"=>"WDEg9ofx83CeAhiwI1QmA17", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RF718-148-9846",
   "updated_at"=>"2014-04-25T22:01:00.697054Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fb60b366ca8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b365f10/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b362d88/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b360c68/lib/balanced/utils.rb:6 (lambda)>}>

% endif
