% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.new(
  :cvv => '123',
  :expiration_month => '12',
  :expiration_year => '3000',
  :number => '6500000000000002'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fcde3a41f88
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
   "bank_name"=>"BANK OF AMERICA",
   "brand"=>"Discover",
   "can_credit"=>true,
   "can_debit"=>true,
   "category"=>"other",
   "created_at"=>"2014-12-17T21:25:34.002704Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>3000,
   "fingerprint"=>
    "3c667a62653e187f29b5781eeb0703f26e99558080de0c0f9490b5f9c4ac2871",
   "href"=>"/cards/CC7Lwi6mzKkqwXrIg5UY1BE9",
   "id"=>"CC7Lwi6mzKkqwXrIg5UY1BE9",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx0002",
   "type"=>"debit",
   "updated_at"=>"2014-12-17T21:25:34.002706Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fcde3a28f10/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde3a168b0/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde39fc640/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde39dc480/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fcde39cfe88/lib/balanced/utils.rb:6 (lambda)>}>

% endif
