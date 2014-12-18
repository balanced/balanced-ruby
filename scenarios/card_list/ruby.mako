% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fcde192c910
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
    "bank_name"=>"BANK OF HAWAII",
    "brand"=>"MasterCard",
    "can_credit"=>false,
    "can_debit"=>true,
    "category"=>"other",
    "created_at"=>"2014-12-17T21:24:55.056930Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC73IyzxPUu2z89NH8GrJhLn",
    "id"=>"CC73IyzxPUu2z89NH8GrJhLn",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "type"=>"credit",
    "updated_at"=>"2014-12-17T21:24:55.056933Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fcde1936820/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde1935e70/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde1934020/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fcde193e160/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fcde193e110
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
    "bank_name"=>"BANK OF HAWAII",
    "brand"=>"MasterCard",
    "can_credit"=>false,
    "can_debit"=>true,
    "category"=>"other",
    "created_at"=>"2014-12-17T21:24:06.842721Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC6buB6OEtiIf7DMIKzpJ7k9",
    "id"=>"CC6buB6OEtiIf7DMIKzpJ7k9",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "type"=>"credit",
    "updated_at"=>"2014-12-17T21:24:06.842723Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fcde193c0b8/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde1947698/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde1945870/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fcde194fa00/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
