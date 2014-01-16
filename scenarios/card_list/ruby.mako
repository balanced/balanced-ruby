% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x1086105b8
  @attributes=
   {"cvv"=>nil,
    "created_at"=>"2014-01-16T19:22:48.539333Z",
    "cvv_result"=>nil,
    "brand"=>"MasterCard",
    "avs_postal_match"=>nil,
    "name"=>nil,
    "meta"=>{},
    "is_verified"=>true,
    "updated_at"=>"2014-01-16T19:22:48.539337Z",
    "id"=>"CC4ysIN2SnTC7fx5thqY4Gi4",
    "expiration_month"=>12,
    "cvv_match"=>nil,
    "avs_result"=>nil,
    "expiration_year"=>2020,
    "avs_street_match"=>nil,
    "links"=>{"customer"=>nil},
    "number"=>"xxxxxxxxxxxx5100",
    "href"=>"/cards/CC4ysIN2SnTC7fx5thqY4Gi4",
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Card:0x1085ce8c0
  @attributes=
   {"cvv"=>nil,
    "created_at"=>"2014-01-16T19:22:35.590456Z",
    "cvv_result"=>nil,
    "brand"=>"MasterCard",
    "avs_postal_match"=>nil,
    "name"=>nil,
    "meta"=>{},
    "is_verified"=>true,
    "updated_at"=>"2014-01-16T19:22:36.478675Z",
    "id"=>"CC4jTPaidxCdN7kXVsTfkM1W",
    "expiration_month"=>12,
    "cvv_match"=>nil,
    "avs_result"=>nil,
    "expiration_year"=>2020,
    "avs_street_match"=>nil,
    "links"=>{"customer"=>"CU3Nvm0R94mOwJ45fixBWQHc"},
    "number"=>"xxxxxxxxxxxx5100",
    "href"=>"/cards/CC4jTPaidxCdN7kXVsTfkM1W",
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
    "card_holds"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
