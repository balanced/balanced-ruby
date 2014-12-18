% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.fetch('/cards/CC7bBGoeKPe5DBKWgduZd5Cl')
card.associate_to_customer('/customers/CU68iUpvvUwpRpuuBL3u9Slq')
% elif mode == 'response':
#<Balanced::Card:0x007fcde3ac9ed8
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
   "links"=>{"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq"},
   "meta"=>{},
   "name"=>"Johannes Bach",
   "number"=>"xxxxxxxxxxxx1118",
   "type"=>"debit",
   "updated_at"=>"2014-12-17T21:25:02.633343Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fcde3ac3bf0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde3ac1a30/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde3abbd38/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde3ab9a60/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fcde3ab3818/lib/balanced/utils.rb:6 (lambda)>}>

% endif
