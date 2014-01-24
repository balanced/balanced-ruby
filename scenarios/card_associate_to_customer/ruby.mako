% if mode == 'definition':
Balanced::Customer.add_card

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card = Balanced::Card.fetch('/cards/CC3VAbj4Ol8xojVU6MjI0G1F')
card.associate_to_customer('/customers/CU3Ttx347VFA9lYT8dBOkwcu')

% elif mode == 'response':
#<Balanced::Card:0x108734110
 @attributes=
  {"cvv_result"=>nil,
   "links"=>{"customer"=>"CU3Ttx347VFA9lYT8dBOkwcu"},
   "meta"=>{"client_ip_address"=>"54.224.61.244"},
   "avs_postal_match"=>nil,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "expiration_month"=>12,
   "avs_street_match"=>nil,
   "name"=>nil,
   "expiration_year"=>2020,
   "created_at"=>"2014-01-24T17:54:00.240776Z",
   "brand"=>"MasterCard",
   "address"=>
    {"country_code"=>nil,
     "state"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "postal_code"=>nil,
     "city"=>nil},
   "is_verified"=>true,
   "href"=>"/cards/CC3VAbj4Ol8xojVU6MjI0G1F",
   "cvv_match"=>nil,
   "cvv"=>nil,
   "avs_result"=>nil,
   "updated_at"=>"2014-01-24T17:54:00.836570Z",
   "id"=>"CC3VAbj4Ol8xojVU6MjI0G1F",
   "number"=>"xxxxxxxxxxxx5100"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "debits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
