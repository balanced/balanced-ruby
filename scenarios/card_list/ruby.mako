% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x10e96d7c8
  @attributes=
   {"meta"=>{},
    "cvv"=>nil,
    "links"=>{"customer"=>nil},
    "is_verified"=>true,
    "expiration_month"=>12,
    "updated_at"=>"2014-01-16T20:01:11.658249Z",
    "cvv_match"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "id"=>"CC7nvFZYLkB5xPZDrgwcdIO2",
    "name"=>nil,
    "expiration_year"=>2020,
    "cvv_result"=>nil,
    "avs_result"=>nil,
    "avs_postal_match"=>nil,
    "href"=>"/cards/CC7nvFZYLkB5xPZDrgwcdIO2",
    "created_at"=>"2014-01-16T20:01:11.658246Z",
    "avs_street_match"=>nil,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "brand"=>"MasterCard"},
  @hyperlinks=
   {"debits"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>,
 #<Balanced::Card:0x10e92b4e0
  @attributes=
   {"meta"=>{},
    "cvv"=>nil,
    "links"=>{"customer"=>"CU6r91gPWrpyaehX1H82kBII"},
    "is_verified"=>true,
    "expiration_month"=>12,
    "updated_at"=>"2014-01-16T20:00:53.503322Z",
    "cvv_match"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "id"=>"CC728b2nP8zS2QDI8lIIXcFk",
    "name"=>nil,
    "expiration_year"=>2020,
    "cvv_result"=>nil,
    "avs_result"=>nil,
    "avs_postal_match"=>nil,
    "href"=>"/cards/CC728b2nP8zS2QDI8lIIXcFk",
    "created_at"=>"2014-01-16T20:00:52.649024Z",
    "avs_street_match"=>nil,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "brand"=>"MasterCard"},
  @hyperlinks=
   {"debits"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>]

% endif
