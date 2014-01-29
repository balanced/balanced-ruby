% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fdc9c270a30
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
     #<Proc:0x007fdc9c27a4e0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fdc9c279b08/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9c283c20/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fdc9c283bd0
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
    "created_at"=>"2014-01-27T22:56:37.869483Z",
    "cvv"=>nil,
    "cvv_match"=>nil,
    "cvv_result"=>nil,
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC2abDOQVm5aNFhHpcRvWS02",
    "id"=>"CC2abDOQVm5aNFhHpcRvWS02",
    "is_verified"=>true,
    "links"=>{"customer"=>"CU1f8Ygc4t0F2FKNcw235x9I"},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-01-27T22:56:39.354525Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fdc9c281718/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fdc9c28bce0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9c289e90/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
