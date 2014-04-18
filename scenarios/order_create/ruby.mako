% if mode == 'definition':
Balanced::Customer.create_order

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

merchant_customer = Balanced::Customer.fetch('/customers/CU1eX3FIMntmCLmi2VfWA2db')
merchant_customer.create_order(
  :description => 'Order #12341234'
)
% elif mode == 'response':
#<Balanced::Order:0x007fb793d42888
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
    #<Proc:0x007fb793d407b8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793d3a8e0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793d38a68/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fb793d32f28/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793d30fe8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb793d2b110/lib/balanced/utils.rb:6 (lambda)>}>

% endif
