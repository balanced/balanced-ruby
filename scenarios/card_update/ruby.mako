% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC4gG6BE70pMOYKPBive9qoF')
card.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x007fa7d4216410
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
   "bank"=>"BANK OF HAWAII",
   "brand"=>"MasterCard",
   "can_credit"=>false,
   "can_debit"=>true,
   "category"=>nil,
   "created_at"=>"2014-05-15T00:40:43.949061Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC4gG6BE70pMOYKPBive9qoF",
   "id"=>"CC4gG6BE70pMOYKPBive9qoF",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "type"=>"",
   "updated_at"=>"2014-05-15T00:40:47.925893Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa7d420ff20/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d420da90/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d420cfa0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d4205ca0/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d41ff3f0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
