% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x007fc09cdaa430
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-04-01T16:39:09.590474Z",
    "currency"=>"USD",
    "description"=>"Refund for Order #1111",
    "href"=>"/refunds/RFXnfW2ixFL6qra1mgF5wR8",
    "id"=>"RFXnfW2ixFL6qra1mgF5wR8",
    "links"=>
     {"debit"=>"WDVNXTW2eo8YXgikJOXqVgy", "dispute"=>nil, "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"succeeded",
    "transaction_number"=>"RF073-158-2913",
    "updated_at"=>"2014-04-01T16:39:10.174457Z"},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x007fc09cda88d8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fc09cda3ef0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fc09cda1fd8/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fc09cda1510/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
