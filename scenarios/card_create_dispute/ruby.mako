% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.new(
  :cvv => '123',
  :expiration_month => '12',
  :expiration_year => '3000',
  :number => '6500000000000002'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fa7d310c160
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
   "bank"=>"BANK OF AMERICA",
   "brand"=>"Discover",
   "can_credit"=>true,
   "can_debit"=>true,
   "category"=>"consumer card",
   "created_at"=>"2014-05-15T00:42:36.010022Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>3000,
   "fingerprint"=>
    "3c667a62653e187f29b5781eeb0703f26e99558080de0c0f9490b5f9c4ac2871",
   "href"=>"/cards/CC6iIaFL1QliTaYG47BArZAh",
   "id"=>"CC6iIaFL1QliTaYG47BArZAh",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx0002",
   "type"=>"debit",
   "updated_at"=>"2014-05-15T00:42:36.010024Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa7d3451e88/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d310bdf0/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d310b3a0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d3109410/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d3103510/lib/balanced/utils.rb:6 (lambda)>}>

% endif
