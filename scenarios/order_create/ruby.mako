% if mode == 'definition':
Balanced::Customer.create_order

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

merchant_customer = Balanced::Customer.fetch('/customers/CU4MnFEab304anOtUtEu5hkN')
merchant_customer.create_order(
  :description => 'Order #12341234'
)
% elif mode == 'response':
#<Balanced::Order:0x007fa93e965318
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
    #<Proc:0x007fa93e95f008/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa93e95cba0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93e956b10/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa93e955008/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93e94f018/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa93e94d038/lib/balanced/utils.rb:6 (lambda)>}>

% endif
