% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fb60b1dcfb8
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
    "created_at"=>"2014-04-25T22:00:30.351615Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC832pqCbRPor1ewRdxPvnv",
    "id"=>"CC832pqCbRPor1ewRdxPvnv",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-25T22:00:30.351617Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fb60b1cfe80/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb60b1cd310/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b1c4cd8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fb60b1c4c60
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
    "created_at"=>"2014-04-25T22:00:19.891594Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC7JlMyXyZ8W3RBfE1SSlnrD",
    "id"=>"CC7JlMyXyZ8W3RBfE1SSlnrD",
    "is_verified"=>true,
    "links"=>{"customer"=>"CU7c8cBtxfllT4M6zDyjbJA1"},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "updated_at"=>"2014-04-25T22:00:20.553921Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fb60b1ad8d0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb60b1a7e08/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b19be00/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
