% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

order = Balanced::Order.find('/orders/ORrsQyULWCJxYfrUwZryIBQ')
order.description = 'New description for order'
order.meta = {
    'product.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x1020b63e8
 @attributes=
  {"meta"=>{"product.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "currency"=>"USD",
   "links"=>{"merchant"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "description"=>"New description for order",
   "created_at"=>"2014-01-16T20:01:58.794373Z",
   "id"=>"ORrsQyULWCJxYfrUwZryIBQ",
   "amount_escrowed"=>0,
   "amount"=>0,
   "updated_at"=>"2014-01-16T20:02:03.405994Z",
   "href"=>"/orders/ORrsQyULWCJxYfrUwZryIBQ"},
 @hyperlinks=
  {"credits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "merchant"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
   "buyers"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
