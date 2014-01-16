% if mode == 'definition':
Balanced::Order.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

order = Balanced::Order.new(
  :description => 'Order #12341234'
)
order.save
% elif mode == 'response':
#<Balanced::Order:0x10871b138
 @attributes=
  {"created_at"=>"2014-01-16T19:23:33.253871Z",
   "amount_escrowed"=>0,
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:23:33.253874Z",
   "id"=>"OR5mL3l5NLwUDQvQppYeQk8q",
   "description"=>"Order #12341234",
   "links"=>{"merchant"=>"CU546zhmBDn3NEMyP7qXHqe4"},
   "currency"=>"USD",
   "href"=>"/orders/OR5mL3l5NLwUDQvQppYeQk8q",
   "amount"=>0},
 @hyperlinks=
  {"merchant"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "refunds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "buyers"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
