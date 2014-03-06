% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x1066a7758
  @attributes=
   {"cvv"=>"xxx",
    "avs_street_match"=>nil,
    "address"=>
     {"line2"=>nil,
      "line1"=>nil,
      "country_code"=>nil,
      "postal_code"=>nil,
      "city"=>nil,
      "state"=>nil},
    "number"=>"xxxxxxxxxxxx5100",
    "cvv_match"=>"yes",
    "avs_result"=>nil,
    "name"=>nil,
    "links"=>{"customer"=>nil},
    "created_at"=>"2014-03-05T23:26:12.047635Z",
    "brand"=>"MasterCard",
    "href"=>"/cards/CC4cbNzUmFqGrc1GmFpXp6fe",
    "id"=>"CC4cbNzUmFqGrc1GmFpXp6fe",
    "avs_postal_match"=>nil,
    "is_verified"=>true,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "expiration_year"=>2020,
    "expiration_month"=>12,
    "updated_at"=>"2014-03-05T23:26:12.047639Z",
    "meta"=>{},
    "cvv_result"=>"Match"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>,
 #<Balanced::Card:0x1066a0c00
  @attributes=
   {"cvv"=>"xxx",
    "avs_street_match"=>nil,
    "address"=>
     {"line2"=>nil,
      "line1"=>nil,
      "country_code"=>nil,
      "postal_code"=>nil,
      "city"=>nil,
      "state"=>nil},
    "number"=>"xxxxxxxxxxxx5100",
    "cvv_match"=>"yes",
    "avs_result"=>nil,
    "name"=>nil,
    "links"=>{"customer"=>"CU3EOo1JQiusqvWMhgNOKCQW"},
    "created_at"=>"2014-03-05T23:26:00.730925Z",
    "brand"=>"MasterCard",
    "href"=>"/cards/CC3ZsWHP2jMgvFrrzDzfZS0q",
    "id"=>"CC3ZsWHP2jMgvFrrzDzfZS0q",
    "avs_postal_match"=>nil,
    "is_verified"=>true,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "expiration_year"=>2020,
    "expiration_month"=>12,
    "updated_at"=>"2014-03-05T23:26:01.448309Z",
    "meta"=>{},
    "cvv_result"=>"Match"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>]

% endif
