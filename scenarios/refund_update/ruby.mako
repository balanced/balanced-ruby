% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

refund = Balanced::Refund.fetch('/refunds/RF7IJ4JDvDf4DLzJ9lgh6D8p')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fcde0993468
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-12-17T21:25:31.528064Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF7IJ4JDvDf4DLzJ9lgh6D8p",
   "id"=>"RF7IJ4JDvDf4DLzJ9lgh6D8p",
   "links"=>
    {"debit"=>"WD7HiEv2UJV5WlRSAcmGOFKJ", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RFS3R-YHO-DMB0",
   "updated_at"=>"2014-12-17T21:26:03.570873Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fcde0991910/lib/balanced/resources/resource.rb:56 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde0990f88/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde098b100/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde098a728/lib/balanced/utils.rb:6 (lambda)>}>

% endif
