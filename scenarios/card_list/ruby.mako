% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x1084cf280
  @attributes=
   {"name"=>nil,
    "expiration_month"=>12,
    "cvv_result"=>nil,
    "created_at"=>"2014-01-16T20:01:11.658246Z",
    "number"=>"xxxxxxxxxxxx5100",
    "avs_street_match"=>nil,
    "cvv"=>nil,
    "meta"=>{},
    "avs_postal_match"=>nil,
    "cvv_match"=>nil,
    "brand"=>"MasterCard",
    "avs_result"=>nil,
    "is_verified"=>true,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "links"=>{"customer"=>nil},
    "id"=>"CC7nvFZYLkB5xPZDrgwcdIO2",
    "href"=>"/cards/CC7nvFZYLkB5xPZDrgwcdIO2",
    "updated_at"=>"2014-01-16T20:01:11.658249Z",
    "expiration_year"=>2020},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>,
 #<Balanced::Card:0x108488010
  @attributes=
   {"name"=>nil,
    "expiration_month"=>12,
    "cvv_result"=>nil,
    "created_at"=>"2014-01-16T20:00:52.649024Z",
    "number"=>"xxxxxxxxxxxx5100",
    "avs_street_match"=>nil,
    "cvv"=>nil,
    "meta"=>{},
    "avs_postal_match"=>nil,
    "cvv_match"=>nil,
    "brand"=>"MasterCard",
    "avs_result"=>nil,
    "is_verified"=>true,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "links"=>{"customer"=>"CU6r91gPWrpyaehX1H82kBII"},
    "id"=>"CC728b2nP8zS2QDI8lIIXcFk",
    "href"=>"/cards/CC728b2nP8zS2QDI8lIIXcFk",
    "updated_at"=>"2014-01-16T20:00:53.503322Z",
    "expiration_year"=>2020},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "card_holds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>]

% endif
