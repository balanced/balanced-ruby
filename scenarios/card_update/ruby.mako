% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::Card.find('/cards/CC2O5c4KrZSiyV7eFPGySXtd')
card.meta = {
  'twitter.id' => '1234987650',
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x107598820
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
   "meta"=>
    {"twitter.id"=>"1234987650",
     "facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345"},
   "links"=>{"customer"=>nil},
   "href"=>"/cards/CC2O5c4KrZSiyV7eFPGySXtd",
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "avs_postal_match"=>nil,
   "id"=>"CC2O5c4KrZSiyV7eFPGySXtd",
   "expiration_year"=>2020,
   "updated_at"=>"2014-01-16T19:57:03.628069Z",
   "is_verified"=>true},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
