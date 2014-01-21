% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

order = Balanced::Order.fetch('/orders/ORrsQyULWCJxYfrUwZryIBQ')
order.description = 'New description for order'
order.meta = {
    'product.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x1087a02e8
 @attributes=
  {"created_at"=>"2014-01-16T20:01:58.794373Z",
   "meta"=>{"product.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "description"=>"New description for order",
   "amount_escrowed"=>0,
   "links"=>{"merchant"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "id"=>"ORrsQyULWCJxYfrUwZryIBQ",
   "href"=>"/orders/ORrsQyULWCJxYfrUwZryIBQ",
   "amount"=>0,
   "updated_at"=>"2014-01-16T20:02:03.405994Z",
   "currency"=>"USD"},
 @hyperlinks=
  {"refunds"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "buyers"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "merchant"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "credits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
