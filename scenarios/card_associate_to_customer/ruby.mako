% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::Card.fetch('/cards/CC4tvKLTKXcBJAgkGvPEW58N')
card.associate_to_customer('/customers/CU3VYCUIfwngJsidJWdGw2W5')
% elif mode == 'response':
#<Balanced::Card:0x007fa6d24850a0
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
   "brand"=>"MasterCard",
   "created_at"=>"2014-04-25T20:09:57.984444Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC4tvKLTKXcBJAgkGvPEW58N",
   "id"=>"CC4tvKLTKXcBJAgkGvPEW58N",
   "is_verified"=>true,
   "links"=>{"customer"=>"CU3VYCUIfwngJsidJWdGw2W5"},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-04-25T20:09:58.467948Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa6d247e778/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa6d247c180/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fa6d2476230/lib/balanced/utils.rb:6 (lambda)>}>

% endif
