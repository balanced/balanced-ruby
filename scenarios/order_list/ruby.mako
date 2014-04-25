% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x007fa93e866c50
  @attributes=
   {"amount"=>0,
    "amount_escrowed"=>0,
    "created_at"=>"2014-04-25T20:18:43.120760Z",
    "currency"=>"USD",
    "delivery_address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "description"=>"Order #12341234",
    "href"=>"/orders/OR6d55qbtKx5aWSURkQeodRr",
    "id"=>"OR6d55qbtKx5aWSURkQeodRr",
    "links"=>{"merchant"=>"CU4MnFEab304anOtUtEu5hkN"},
    "meta"=>{},
    "updated_at"=>"2014-04-25T20:18:43.120762Z"},
  @hyperlinks=
   {"buyers"=>
     #<Proc:0x007fa93e864338/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa93e8563f0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93e854500/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fa93e84ea38/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa93e84cbc0/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa93e846bd0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
