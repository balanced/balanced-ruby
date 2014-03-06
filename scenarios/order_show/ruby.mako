% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

order = Balanced::Order.fetch('/orders/OR520nGy59wfJ4mM7HR6TYrn')

% elif mode == 'response':
#<Balanced::Order:0x106851298
 @attributes=
  {"links"=>{"merchant"=>"CU4EeI9UPzRcOo2C3j1qFjQj"},
   "currency"=>"USD",
   "amount_escrowed"=>0,
   "created_at"=>"2014-03-05T23:26:52.111548Z",
   "href"=>"/orders/OR520nGy59wfJ4mM7HR6TYrn",
   "description"=>"Order #12341234",
   "amount"=>0,
   "id"=>"OR520nGy59wfJ4mM7HR6TYrn",
   "updated_at"=>"2014-03-05T23:26:52.111551Z",
   "meta"=>{},
   "delivery_address"=>
    {"line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil,
     "postal_code"=>nil,
     "city"=>nil,
     "state"=>nil}},
 @hyperlinks=
  {"reversals"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "merchant"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "buyers"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
