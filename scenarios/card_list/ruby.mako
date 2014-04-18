% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fb793a7f970
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
    "created_at"=>"2014-04-17T22:39:16.874876Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CCOeoFZJMd94AruXU0wuSI9",
    "id"=>"CCOeoFZJMd94AruXU0wuSI9",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-17T22:39:16.874878Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fb793a7cce8/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb793a77f90/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793a75ee8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fb793a75e98
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
    "created_at"=>"2014-04-17T22:39:06.284782Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CCCk1CEzUN0gDA5qh8um0rv",
    "id"=>"CCCk1CEzUN0gDA5qh8um0rv",
    "is_verified"=>true,
    "links"=>{"customer"=>"CU7EYury1BOjhbW83bqFKfVr"},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-17T22:39:06.871606Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fb793a76668/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb793a6e508/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793a6c6b8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
