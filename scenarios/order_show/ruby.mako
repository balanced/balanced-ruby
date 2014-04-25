% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

order = Balanced::Order.fetch('/orders/OR6d55qbtKx5aWSURkQeodRr')

% elif mode == 'response':
#<Balanced::Order:0x007fa6d2277448
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
    #<Proc:0x007fa6d2265d10/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa6d226fc48/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa6d226d6c8/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa6d225f898/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa6d2257cd8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa6d2255320/lib/balanced/utils.rb:6 (lambda)>}>

% endif
