% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card = Balanced::Card.fetch('/cards/CCHv1QwjLfCxskorXDf8bmm')
card.associate_to_customer('/customers/CUb38G1IRIovbbaJlMMKUqG')
% elif mode == 'response':
#<Balanced::Card:0x007fc09e2e9738
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
   "created_at"=>"2014-04-01T16:38:44.305657Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CCHv1QwjLfCxskorXDf8bmm",
   "id"=>"CCHv1QwjLfCxskorXDf8bmm",
   "is_verified"=>true,
   "links"=>{"customer"=>"CUb38G1IRIovbbaJlMMKUqG"},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-04-01T16:38:44.906332Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fc09e2f36e8/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fc09e2f1de8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e2f0038/lib/balanced/utils.rb:6 (lambda)>}>

% endif
