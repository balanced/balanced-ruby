% if mode == 'definition':
Balanced::Card.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card = Balanced::Card.fetch('/cards/CC2uc8iPDjgyxOXHVtnZloyI')
% elif mode == 'response':
#<Balanced::Card:0x007fdc9c2cab48
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
   "created_at"=>"2014-01-27T22:56:55.656375Z",
   "cvv"=>nil,
   "cvv_match"=>nil,
   "cvv_result"=>nil,
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC2uc8iPDjgyxOXHVtnZloyI",
   "id"=>"CC2uc8iPDjgyxOXHVtnZloyI",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-01-27T22:56:55.656379Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fdc9c2c8668/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fdc9c2d3c20/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9c2d1da8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
