% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x1067db8e0
  @attributes=
   {"status"=>"succeeded",
    "links"=>
     {"debit"=>"WD57kmfV9Cgc0MiZkHOmFU1z", "order"=>nil, "dispute"=>nil},
    "currency"=>"USD",
    "created_at"=>"2014-03-05T23:26:58.437383Z",
    "href"=>"/refunds/RF5c71x7GALUPPdyexP4Weca",
    "description"=>"Refund for Order #1111",
    "amount"=>3000,
    "transaction_number"=>"RF145-678-0145",
    "id"=>"RF5c71x7GALUPPdyexP4Weca",
    "updated_at"=>"2014-03-05T23:26:58.984962Z",
    "meta"=>
     {"merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product",
      "fulfillment.item.condition"=>"OK"}},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
    "order"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "dispute"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>]

% endif
