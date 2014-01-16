% if mode == 'definition':
Balanced::Customer.add_card

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::Card.find('/cards/CC3l20ZPAeDRcEWbYi0jbAHt')
card.associate_to_customer('/customers/CU3icqpTA5n8LTkqcmRpwqPZ')

% elif mode == 'response':
#<Balanced::Card:0x10739c4b8
 @attributes=
  {"expiration_month"=>12,
   "cvv_match"=>nil,
   "cvv"=>nil,
   "brand"=>"MasterCard",
   "number"=>"xxxxxxxxxxxx5100",
   "name"=>nil,
   "avs_result"=>nil,
   "created_at"=>"2014-01-16T19:57:28.932573Z",
   "avs_street_match"=>nil,
   "cvv_result"=>nil,
   "meta"=>{},
   "links"=>{"customer"=>"CU3icqpTA5n8LTkqcmRpwqPZ"},
   "href"=>"/cards/CC3l20ZPAeDRcEWbYi0jbAHt",
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "avs_postal_match"=>nil,
   "id"=>"CC3l20ZPAeDRcEWbYi0jbAHt",
   "expiration_year"=>2020,
   "updated_at"=>"2014-01-16T19:57:29.460155Z",
   "is_verified"=>true},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "debits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
