% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x007fa93b7854d8
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-04-25T20:10:22.593252Z",
    "currency"=>"USD",
    "description"=>"Refund for Order #1111",
    "href"=>"/refunds/RF4VbbS5LdgSxlECITkHg0Zf",
    "id"=>"RF4VbbS5LdgSxlECITkHg0Zf",
    "links"=>
     {"debit"=>"WD4SOTNKiZbBFrmMk6mfszIl", "dispute"=>nil, "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"succeeded",
    "transaction_number"=>"RF854-846-2859",
    "updated_at"=>"2014-04-25T20:10:23.032505Z"},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x007fa93b77f718/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa93b77ed90/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa93b77ce50/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa93b77c450/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
