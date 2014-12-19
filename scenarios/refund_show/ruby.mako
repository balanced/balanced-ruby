% if mode == 'definition':
Balanced::Refund.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

refund = Balanced::Refund.fetch('/refunds/RF7IJ4JDvDf4DLzJ9lgh6D8p')

% elif mode == 'response':
#<Balanced::Refund:0x007fcde09f22d8
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
    #<Proc:0x007fcde09f04b0/lib/balanced/resources/resource.rb:56 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde09eba78/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde09e9c28/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde09e9250/lib/balanced/utils.rb:6 (lambda)>}>

% endif
