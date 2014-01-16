% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

order = Balanced::Order.find('/orders/OR3BfmcL5GdGiFeYurVs302c')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x1075bce00
 @attributes=
  {"currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:43.367993Z",
   "amount_escrowed"=>0,
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "links"=>{"merchant"=>"CU3icqpTA5n8LTkqcmRpwqPZ"},
   "href"=>"/orders/OR3BfmcL5GdGiFeYurVs302c",
   "description"=>"New description for order",
   "id"=>"OR3BfmcL5GdGiFeYurVs302c",
   "amount"=>0,
   "updated_at"=>"2014-01-16T19:57:46.893768Z"},
 @hyperlinks=
  {"merchant"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "reversals"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "buyers"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
