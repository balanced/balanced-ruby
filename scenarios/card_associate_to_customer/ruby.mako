% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::Card.fetch('/cards/CCf1fF6z2RjwvniinUVefhb')
card.associate_to_customer('/customers/CU7yCmXG2RxyyIkcHG3SIMUF')
% elif mode == 'response':
#<Balanced::Card:0x007fb60b3912a0
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
   "created_at"=>"2014-04-25T22:00:36.548055Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CCf1fF6z2RjwvniinUVefhb",
   "id"=>"CCf1fF6z2RjwvniinUVefhb",
   "is_verified"=>true,
   "links"=>{"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF"},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-04-25T22:00:37.042031Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fb60b392038/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb60b39c588/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b3a1ec0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
