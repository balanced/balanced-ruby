% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fa4e2932590
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
    "created_at"=>"2014-03-06T19:22:55.617351Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC5Buki6e4Kg4bDVZ3OSfQ8O",
    "id"=>"CC5Buki6e4Kg4bDVZ3OSfQ8O",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-03-06T19:22:55.617354Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa4e2939840/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa4e29387b0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e4992330/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fa4e49922b8
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
    "created_at"=>"2014-03-06T19:22:43.295192Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC5nCSU0yFp3qxR4p6UZST7y",
    "id"=>"CC5nCSU0yFp3qxR4p6UZST7y",
    "is_verified"=>true,
    "links"=>{"customer"=>"CU4Wt8xSbREzV2NWtdVAFGeR"},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-03-06T19:22:44.417128Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa4e499b250/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa4e4998c58/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e49a2348/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
