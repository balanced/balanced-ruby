% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

refund = Balanced::Refund.fetch('/refunds/RFFFulVVpBiNWpJ2VLMto1L')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fb60b276b90
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-25T22:01:00.249873Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RFFFulVVpBiNWpJ2VLMto1L",
   "id"=>"RFFFulVVpBiNWpJ2VLMto1L",
   "links"=>{"debit"=>"WDEg9ofx83CeAhiwI1QmA17", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF718-148-9846",
   "updated_at"=>"2014-04-25T22:08:56.890917Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fb60a8dcf80/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60a8dc490/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60a8d8cc8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60a8d8070/lib/balanced/utils.rb:6 (lambda)>}>

% endif
