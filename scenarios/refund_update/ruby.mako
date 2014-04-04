% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

refund = Balanced::Refund.fetch('/refunds/RFXnfW2ixFL6qra1mgF5wR8')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fc09e2c2840
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-01T16:39:09.590474Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RFXnfW2ixFL6qra1mgF5wR8",
   "id"=>"RFXnfW2ixFL6qra1mgF5wR8",
   "links"=>{"debit"=>"WDVNXTW2eo8YXgikJOXqVgy", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF073-158-2913",
   "updated_at"=>"2014-04-01T16:39:23.850379Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fc09e2c0d88/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fc09e2c0400/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e2aa600/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09e2a9bd8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
