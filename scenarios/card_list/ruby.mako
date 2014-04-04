% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fc09e101dd0
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
    "created_at"=>"2014-04-01T16:38:37.683448Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CCA3crun7LbUPTtQyJhPAtW",
    "id"=>"CCA3crun7LbUPTtQyJhPAtW",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-01T16:38:37.683451Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fc09e0cfd58/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fc09e0cf358/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09e0cd490/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fc09e0cd440
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
    "created_at"=>"2014-04-01T16:38:26.361224Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CCnjE94RvMPW7RnmLdzIL42",
    "id"=>"CCnjE94RvMPW7RnmLdzIL42",
    "is_verified"=>true,
    "links"=>{"customer"=>"CU7ny5y6tdGmz5q0xDQJco9O"},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-01T16:38:26.957002Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fc09e0c7450/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fc09e0c5ab0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09e05f788/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
