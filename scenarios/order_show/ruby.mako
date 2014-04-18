% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

order = Balanced::Order.fetch('/orders/OR1MqLeXKqwqqW254i3GJ72F')

% elif mode == 'response':
#<Balanced::Order:0x007fb793c84928
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-04-17T22:40:10.393839Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"Order #12341234",
   "href"=>"/orders/OR1MqLeXKqwqqW254i3GJ72F",
   "id"=>"OR1MqLeXKqwqqW254i3GJ72F",
   "links"=>{"merchant"=>"CU1eX3FIMntmCLmi2VfWA2db"},
   "meta"=>{},
   "updated_at"=>"2014-04-17T22:40:10.393841Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fb793c923e8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793c903e0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793c823f8/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fb793c805f8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793c7a590/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb793c78538/lib/balanced/utils.rb:6 (lambda)>}>

% endif
