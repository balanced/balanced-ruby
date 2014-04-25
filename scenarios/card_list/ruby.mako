% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fa93b6f4618
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
    "created_at"=>"2014-04-25T20:09:52.175221Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC4mYF7dj7X6OA2K5F0Qyb4N",
    "id"=>"CC4mYF7dj7X6OA2K5F0Qyb4N",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-25T20:09:52.175224Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa93b6ee128/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa93b6ed638/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93b6e77b0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fa93b6e7760
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
    "created_at"=>"2014-04-25T20:09:41.078409Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC4auQXiAWMBxJcEUIMYeZFj",
    "id"=>"CC4auQXiAWMBxJcEUIMYeZFj",
    "is_verified"=>true,
    "links"=>{"customer"=>"CU3z3rwGWGazDwwyLy0rNqfj"},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-25T20:09:41.708881Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa93b6e5618/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa93b6df628/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93b6dd760/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
