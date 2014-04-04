% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

order = Balanced::Order.fetch('/orders/OR16uowitglVKoM6x5DxkKVq')

% elif mode == 'response':
#<Balanced::Order:0x007fc09cd63850
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
   "description"=>"Order #12341234",
   "href"=>"/orders/OR16uowitglVKoM6x5DxkKVq",
   "id"=>"OR16uowitglVKoM6x5DxkKVq",
   "links"=>{"merchant"=>"CU116TOiXnCfxHyDErDcMtpU"},
   "meta"=>{},
   "updated_at"=>"2014-04-01T16:39:16.292669Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fc09cd61708/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09cd73890/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09cd71a18/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fc09cd70078/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09cd7a1b8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09cd78340/lib/balanced/utils.rb:6 (lambda)>}>

% endif
