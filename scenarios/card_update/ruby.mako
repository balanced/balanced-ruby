% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card = Balanced::Card.fetch('/cards/CC5Buki6e4Kg4bDVZ3OSfQ8O')
card.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x007fefdb9825b0
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
   "created_at"=>"2014-03-06T19:22:55.617351Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC5Buki6e4Kg4bDVZ3OSfQ8O",
   "id"=>"CC5Buki6e4Kg4bDVZ3OSfQ8O",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-03-06T19:22:59.186980Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fefdb980530/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fefdb98bb38/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefdb989ce8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
