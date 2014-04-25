% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::Card.fetch('/cards/CC4mYF7dj7X6OA2K5F0Qyb4N')
card.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x007fa6d34449a0
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "avs_postal_match"=>nil,
   "avs_result"=>nil,
   "avs_street_match"=>nil,
   "brand"=>"MasterCard",
   "created_at"=>"2014-04-25T20:09:52.175221Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC4mYF7dj7X6OA2K5F0Qyb4N",
   "id"=>"CC4mYF7dj7X6OA2K5F0Qyb4N",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-04-25T20:09:55.802789Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa6d342ec40/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa6d3423098/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa6d3413dc8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
