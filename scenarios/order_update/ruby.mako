% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

order = Balanced::Order.fetch('/orders/OR520nGy59wfJ4mM7HR6TYrn')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x10e4300a8
 @attributes=
  {"amount"=>0,
   "links"=>{"merchant"=>"CU4EeI9UPzRcOo2C3j1qFjQj"},
   "description"=>"New description for order",
   "delivery_address"=>
    {"country_code"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "state"=>nil,
     "city"=>nil,
     "postal_code"=>nil},
   "created_at"=>"2014-03-05T23:26:52.111548Z",
   "id"=>"OR520nGy59wfJ4mM7HR6TYrn",
   "href"=>"/orders/OR520nGy59wfJ4mM7HR6TYrn",
   "amount_escrowed"=>0,
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:55.456480Z"},
 @hyperlinks=
  {"reversals"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "merchant"=>
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "refunds"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "buyers"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
