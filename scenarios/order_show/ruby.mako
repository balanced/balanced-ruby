% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

order = Balanced::Order.fetch('/orders/OR6d55qbtKx5aWSURkQeodRr')

% elif mode == 'response':
#<Balanced::Order:0x007fa93e82ee68
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
    #<Proc:0x007fa93e819db0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa93e827dc0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93e825750/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa93e8139b0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93e80bd50/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa93e8093e8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
