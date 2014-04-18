% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

order = Balanced::Order.fetch('/orders/OR1MqLeXKqwqqW254i3GJ72F')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x007fb793ba3bf8
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
   "description"=>"New description for order",
   "href"=>"/orders/OR1MqLeXKqwqqW254i3GJ72F",
   "id"=>"OR1MqLeXKqwqqW254i3GJ72F",
   "links"=>{"merchant"=>"CU1eX3FIMntmCLmi2VfWA2db"},
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-04-17T22:40:13.722216Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fb793b9ff08/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793b9e040/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793b97a38/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fb793b96070/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793b94220/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb793b8e2a8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
