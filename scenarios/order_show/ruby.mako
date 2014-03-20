% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

order = Balanced::Order.fetch('/orders/OR6wcEVkOymvs4PairiGEcIx')

% elif mode == 'response':
#<Balanced::Order:0x007fefd91db700
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
   "description"=>"Order #12341234",
   "href"=>"/orders/OR6wcEVkOymvs4PairiGEcIx",
   "id"=>"OR6wcEVkOymvs4PairiGEcIx",
   "links"=>{"merchant"=>"CU64R7DS6DwuXYVg9RTskFK8"},
   "meta"=>{},
   "updated_at"=>"2014-03-06T19:23:39.207294Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fefd91d9680/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fefd91f3738/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefd91f18c0/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fefd91fbed8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fefd91fa088/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fefd91f81e8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
