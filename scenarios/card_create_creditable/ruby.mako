% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.new(
  :expiration_month => '05',
  :expiration_year => '2020',
  :name => 'Johannes Bach',
  :number => '4342561111111118'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fcde0963560
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "avs_postal_match"=>nil,
   "avs_result"=>nil,
   "avs_street_match"=>nil,
   "bank_name"=>"WELLS FARGO BANK, N.A.",
   "brand"=>"Visa",
   "can_credit"=>true,
   "can_debit"=>true,
   "category"=>"other",
   "created_at"=>"2014-12-17T21:25:02.071736Z",
   "cvv"=>nil,
   "cvv_match"=>nil,
   "cvv_result"=>nil,
   "expiration_month"=>5,
   "expiration_year"=>2020,
   "fingerprint"=>
    "7dc93d35b59078a1da8e0ebd2cbec65a6ca205760a1be1b90a143d7f2b00e355",
   "href"=>"/cards/CC7bBGoeKPe5DBKWgduZd5Cl",
   "id"=>"CC7bBGoeKPe5DBKWgduZd5Cl",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>"Johannes Bach",
   "number"=>"xxxxxxxxxxxx1118",
   "type"=>"debit",
   "updated_at"=>"2014-12-17T21:25:02.071738Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fcde0960ab8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde093e800/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde093ddd8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde0937bb8/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fcde09357f0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
