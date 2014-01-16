% if mode == 'definition':
Balanced::Order.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

order = Balanced::Order.find('/orders/ORrsQyULWCJxYfrUwZryIBQ')

% elif mode == 'response':
#<Balanced::Order:0x101d5ce68
 @attributes=
  {"meta"=>{},
   "currency"=>"USD",
   "links"=>{"merchant"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "description"=>"Order #12341234",
   "created_at"=>"2014-01-16T20:01:58.794373Z",
   "id"=>"ORrsQyULWCJxYfrUwZryIBQ",
   "amount_escrowed"=>0,
   "amount"=>0,
   "updated_at"=>"2014-01-16T20:01:58.794376Z",
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
