% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

order = Balanced::Order.fetch('/orders/OR16uowitglVKoM6x5DxkKVq')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x007fc09cdb1aa0
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-04-01T16:39:16.292666Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"New description for order",
   "href"=>"/orders/OR16uowitglVKoM6x5DxkKVq",
   "id"=>"OR16uowitglVKoM6x5DxkKVq",
   "links"=>{"merchant"=>"CU116TOiXnCfxHyDErDcMtpU"},
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-04-01T16:39:19.879689Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fc09cdb3878/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09cdb0678/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09cd5a728/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fc09cd58cc0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09ccfed60/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09ccfce48/lib/balanced/utils.rb:6 (lambda)>}>

% endif
