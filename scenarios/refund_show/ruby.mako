% if mode == 'definition':
Balanced::Refund.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

refund = Balanced::Refund.fetch('/refunds/RF3RklPuFgsgI50UuYtr4g6I')

% elif mode == 'response':
#<Balanced::Refund:0x007fdc9b1cd250
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-01-27T22:58:11.375665Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RF3RklPuFgsgI50UuYtr4g6I",
   "id"=>"RF3RklPuFgsgI50UuYtr4g6I",
   "links"=>
    {"debit"=>"WD3MKNxNTKBGgA7mX50yogiu", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RF383-088-7077",
   "updated_at"=>"2014-01-27T22:58:12.115131Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fdc9b1c5f28/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9b1c4c18/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9b1a3d88/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9b198320/lib/balanced/utils.rb:6 (lambda)>}>

% endif
