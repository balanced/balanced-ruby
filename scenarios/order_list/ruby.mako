% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x1073186e0
  @attributes=
   {"currency"=>"USD",
    "created_at"=>"2014-01-16T19:57:43.367993Z",
    "amount_escrowed"=>0,
    "meta"=>{},
    "links"=>{"merchant"=>"CU3icqpTA5n8LTkqcmRpwqPZ"},
    "href"=>"/orders/OR3BfmcL5GdGiFeYurVs302c",
    "description"=>"Order #12341234",
    "id"=>"OR3BfmcL5GdGiFeYurVs302c",
    "amount"=>0,
    "updated_at"=>"2014-01-16T19:57:43.367996Z"},
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
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
