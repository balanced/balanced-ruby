% if mode == 'definition':
Balanced::Order.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

order = Balanced::Order.find('/orders/ORrsQyULWCJxYfrUwZryIBQ')

% elif mode == 'response':
#<Balanced::Order:0x10e81f5b0
 @attributes=
  {"meta"=>{},
   "links"=>{"merchant"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "amount_escrowed"=>0,
   "amount"=>0,
   "updated_at"=>"2014-01-16T20:01:58.794376Z",
   "id"=>"ORrsQyULWCJxYfrUwZryIBQ",
   "currency"=>"USD",
   "href"=>"/orders/ORrsQyULWCJxYfrUwZryIBQ",
   "description"=>"Order #12341234",
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
