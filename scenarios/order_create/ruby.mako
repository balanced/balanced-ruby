% if mode == 'definition':
Balanced::Customer.create_order

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

merchant_customer = Balanced::Customer.fetch('/customers/CU116TOiXnCfxHyDErDcMtpU')
merchant_customer.create_order(
  :description => 'Order #12341234'
)
% elif mode == 'response':
#<Balanced::Order:0x007fc09e2f2d38
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
    #<Proc:0x007fc09e2f0c90/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09e2fadd0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e2f8f30/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fc09e303570/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09e301720/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09e30b838/lib/balanced/utils.rb:6 (lambda)>}>

% endif
