% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x10869b398
  @attributes=
   {"cvv_result"=>nil,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "avs_postal_match"=>nil,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "expiration_month"=>12,
    "avs_street_match"=>nil,
    "name"=>nil,
    "expiration_year"=>2020,
    "created_at"=>"2014-01-24T17:53:35.317225Z",
    "brand"=>"MasterCard",
    "address"=>
     {"country_code"=>nil,
      "state"=>nil,
      "line2"=>nil,
      "line1"=>nil,
      "postal_code"=>nil,
      "city"=>nil},
    "is_verified"=>true,
    "href"=>"/cards/CC3txpMUnPuUSV6vGdaibuL4",
    "cvv_match"=>nil,
    "cvv"=>nil,
    "avs_result"=>nil,
    "updated_at"=>"2014-01-24T17:53:35.317230Z",
    "id"=>"CC3txpMUnPuUSV6vGdaibuL4",
    "number"=>"xxxxxxxxxxxx5100"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>,
 #<Balanced::Card:0x108692e28
  @attributes=
   {"cvv_result"=>nil,
    "links"=>{"customer"=>"CU2J5ei9GWLvlSGbIcmC6qoO"},
    "meta"=>{"client_ip_address"=>"54.224.61.244"},
    "avs_postal_match"=>nil,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "expiration_month"=>12,
    "avs_street_match"=>nil,
    "name"=>nil,
    "expiration_year"=>2020,
    "created_at"=>"2014-01-24T17:53:25.031579Z",
    "brand"=>"MasterCard",
    "address"=>
     {"country_code"=>nil,
      "state"=>nil,
      "line2"=>nil,
      "line1"=>nil,
      "postal_code"=>nil,
      "city"=>nil},
    "is_verified"=>true,
    "href"=>"/cards/CC3hYX4uMMrNuO0lbYMY0PP9",
    "cvv_match"=>nil,
    "cvv"=>nil,
    "avs_result"=>nil,
    "updated_at"=>"2014-01-24T17:53:25.683657Z",
    "id"=>"CC3hYX4uMMrNuO0lbYMY0PP9",
    "number"=>"xxxxxxxxxxxx5100"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
    "debits"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>]

% endif
