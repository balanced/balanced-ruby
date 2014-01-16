% if mode == 'definition':
Balanced::Card.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::Card.find('/cards/CC2O5c4KrZSiyV7eFPGySXtd')
% elif mode == 'response':
#<Balanced::Card:0x1075402b0
 @attributes=
  {"expiration_month"=>12,
   "cvv_match"=>nil,
   "cvv"=>nil,
   "brand"=>"MasterCard",
   "number"=>"xxxxxxxxxxxx5100",
   "name"=>nil,
   "avs_result"=>nil,
   "created_at"=>"2014-01-16T19:56:59.637024Z",
   "avs_street_match"=>nil,
   "cvv_result"=>nil,
   "meta"=>{},
   "links"=>{"customer"=>nil},
   "href"=>"/cards/CC2O5c4KrZSiyV7eFPGySXtd",
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "avs_postal_match"=>nil,
   "id"=>"CC2O5c4KrZSiyV7eFPGySXtd",
   "expiration_year"=>2020,
   "updated_at"=>"2014-01-16T19:56:59.637027Z",
   "is_verified"=>true},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
