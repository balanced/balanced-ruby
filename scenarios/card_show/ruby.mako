% if mode == 'definition':
Balanced::Card.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::Card.fetch('/cards/CC7fN4xs3PRrK3LBCuPSVxc4')
% elif mode == 'response':
#<Balanced::Card:0x007fbaa48a0938
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
   "created_at"=>"2014-03-20T18:17:43.889357Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC7fN4xs3PRrK3LBCuPSVxc4",
   "id"=>"CC7fN4xs3PRrK3LBCuPSVxc4",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-03-20T18:17:43.889362Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fbaa489a920/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fbaa4899f70/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa48980a8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
