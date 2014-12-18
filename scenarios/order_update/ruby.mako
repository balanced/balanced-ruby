% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

order = Balanced::Order.fetch('/orders/ORm6xuCp6tf0DZMp7ESoOj3')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x007fcde11e1340
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-12-17T21:25:55.028602Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"New description for order",
   "href"=>"/orders/ORm6xuCp6tf0DZMp7ESoOj3",
   "id"=>"ORm6xuCp6tf0DZMp7ESoOj3",
   "links"=>{"merchant"=>"CU7yoUz1HuDE7t7p9GcVNYbz"},
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-12-17T21:25:59.040054Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fcde125b230/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde1259408/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde18e7428/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde18e53f8/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fcde18df6b0/lib/balanced/resources/resource.rb:56 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde18dca50/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde18d69e8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
