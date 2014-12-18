% if mode == 'definition':
Balanced::Debit.refund
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

debit = Balanced::Debit.fetch('/debits/WD7HiEv2UJV5WlRSAcmGOFKJ')
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
#<Balanced::Refund:0x007fcde18ac7b0
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-12-17T21:25:31.528064Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RF7IJ4JDvDf4DLzJ9lgh6D8p",
   "id"=>"RF7IJ4JDvDf4DLzJ9lgh6D8p",
   "links"=>
    {"debit"=>"WD7HiEv2UJV5WlRSAcmGOFKJ", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RFS3R-YHO-DMB0",
   "updated_at"=>"2014-12-17T21:25:31.950218Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fcde18a6978/lib/balanced/resources/resource.rb:56 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde18a5e38/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde189fec0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde189eed0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
