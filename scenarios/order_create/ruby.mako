% if mode == 'definition':
Balanced::Order.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

order = Balanced::Order.new(
  :description => 'Order #12341234'
)
order.save
% elif mode == 'response':
#<Balanced::Order:0x1085827b8
 @attributes=
  {"created_at"=>"2014-01-16T20:01:58.794373Z",
   "meta"=>{},
   "description"=>"Order #12341234",
   "amount_escrowed"=>0,
   "links"=>{"merchant"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "id"=>"ORrsQyULWCJxYfrUwZryIBQ",
   "href"=>"/orders/ORrsQyULWCJxYfrUwZryIBQ",
   "amount"=>0,
   "updated_at"=>"2014-01-16T20:01:58.794376Z",
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
