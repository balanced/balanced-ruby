% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

order = Balanced::Order.find('/orders/OR5mL3l5NLwUDQvQppYeQk8q')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x1088de718
 @attributes=
  {"created_at"=>"2014-01-16T19:23:33.253871Z",
   "amount_escrowed"=>0,
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-01-16T19:23:38.244359Z",
   "id"=>"OR5mL3l5NLwUDQvQppYeQk8q",
   "description"=>"New description for order",
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
