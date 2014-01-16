% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x101e17790
  @attributes=
   {"fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "meta"=>{},
    "cvv_result"=>nil,
    "links"=>{"customer"=>nil},
    "is_verified"=>true,
    "avs_result"=>nil,
    "created_at"=>"2014-01-16T20:01:11.658246Z",
    "brand"=>"MasterCard",
    "id"=>"CC7nvFZYLkB5xPZDrgwcdIO2",
    "avs_street_match"=>nil,
    "avs_postal_match"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "cvv_match"=>nil,
    "cvv"=>nil,
    "name"=>nil,
    "updated_at"=>"2014-01-16T20:01:11.658249Z",
    "expiration_year"=>2020,
    "expiration_month"=>12,
    "href"=>"/cards/CC7nvFZYLkB5xPZDrgwcdIO2"},
  @hyperlinks=
   {"debits"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Card:0x101dfedd0
  @attributes=
   {"fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "meta"=>{},
    "cvv_result"=>nil,
    "links"=>{"customer"=>"CU6r91gPWrpyaehX1H82kBII"},
    "is_verified"=>true,
    "avs_result"=>nil,
    "created_at"=>"2014-01-16T20:00:52.649024Z",
    "brand"=>"MasterCard",
    "id"=>"CC728b2nP8zS2QDI8lIIXcFk",
    "avs_street_match"=>nil,
    "avs_postal_match"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "cvv_match"=>nil,
    "cvv"=>nil,
    "name"=>nil,
    "updated_at"=>"2014-01-16T20:00:53.503322Z",
    "expiration_year"=>2020,
    "expiration_month"=>12,
    "href"=>"/cards/CC728b2nP8zS2QDI8lIIXcFk"},
  @hyperlinks=
   {"debits"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>]

% endif
