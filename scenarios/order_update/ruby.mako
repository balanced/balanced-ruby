% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

order = Balanced::Order.fetch('/orders/OR6wcEVkOymvs4PairiGEcIx')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x007fefdc011930
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-03-06T19:23:39.207291Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"New description for order",
   "href"=>"/orders/OR6wcEVkOymvs4PairiGEcIx",
   "id"=>"OR6wcEVkOymvs4PairiGEcIx",
   "links"=>{"merchant"=>"CU64R7DS6DwuXYVg9RTskFK8"},
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-03-06T19:23:42.673919Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fefdc01b868/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fefdc0199f0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefdc023b08/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fefdc022168/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fefdc020318/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fefdc02a458/lib/balanced/utils.rb:6 (lambda)>}>

% endif
