% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fa7d3349590
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
    "bank"=>"BANK OF HAWAII",
    "brand"=>"MasterCard",
    "can_credit"=>false,
    "can_debit"=>true,
    "category"=>nil,
    "created_at"=>"2014-05-15T00:40:43.949061Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC4gG6BE70pMOYKPBive9qoF",
    "id"=>"CC4gG6BE70pMOYKPBive9qoF",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "type"=>"",
    "updated_at"=>"2014-05-15T00:40:43.949064Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa7d3346bb0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d3343af0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa7d3343140/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d3341278/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa7d333b0a8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fa7d333b058
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
    "bank"=>"BANK OF HAWAII",
    "brand"=>"MasterCard",
    "can_credit"=>false,
    "can_debit"=>true,
    "category"=>nil,
    "created_at"=>"2014-05-15T00:39:38.599386Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC35aRYQB8XnL0CxtKGFG7d3",
    "id"=>"CC35aRYQB8XnL0CxtKGFG7d3",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "type"=>"",
    "updated_at"=>"2014-05-15T00:39:38.599390Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa7d3338e98/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d3332f98/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa7d3332598/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d3330040/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa7d3329920/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
