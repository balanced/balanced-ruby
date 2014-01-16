% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

order = Balanced::Order.find('/orders/ORrsQyULWCJxYfrUwZryIBQ')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x10ec2e048
 @attributes=
  {"meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "links"=>{"merchant"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "amount_escrowed"=>0,
   "amount"=>0,
   "updated_at"=>"2014-01-16T20:02:03.405994Z",
   "id"=>"ORrsQyULWCJxYfrUwZryIBQ",
   "currency"=>"USD",
   "href"=>"/orders/ORrsQyULWCJxYfrUwZryIBQ",
   "description"=>"New description for order",
   "created_at"=>"2014-01-16T20:01:58.794373Z"},
 @hyperlinks=
  {"credits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "buyers"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "merchant"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "refunds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
