% if mode == 'definition':
Balanced::Refund.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

refund = Balanced::Refund.fetch('/refunds/RF5c71x7GALUPPdyexP4Weca')

% elif mode == 'response':
#<Balanced::Refund:0x10e3c6d10
 @attributes=
  {"transaction_number"=>"RF145-678-0145",
   "amount"=>3000,
   "links"=>
    {"debit"=>"WD57kmfV9Cgc0MiZkHOmFU1z", "order"=>nil, "dispute"=>nil},
   "description"=>"Refund for Order #1111",
   "created_at"=>"2014-03-05T23:26:58.437383Z",
   "id"=>"RF5c71x7GALUPPdyexP4Weca",
   "href"=>"/refunds/RF5c71x7GALUPPdyexP4Weca",
   "meta"=>
    {"merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product",
     "fulfillment.item.condition"=>"OK"},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:58.984962Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"debit"=>#<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "dispute"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
