% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::Card.fetch('/cards/CC4cbNzUmFqGrc1GmFpXp6fe')
card.meta = {
  'twitter.id' => '1234987650',
  'my-own-customer-id' => '12345',
  'facebook.user_id' => '0192837465'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x10664b980
 @attributes=
  {"cvv"=>"xxx",
   "avs_street_match"=>nil,
   "address"=>
    {"line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil,
     "postal_code"=>nil,
     "city"=>nil,
     "state"=>nil},
   "number"=>"xxxxxxxxxxxx5100",
   "cvv_match"=>"yes",
   "avs_result"=>nil,
   "name"=>nil,
   "links"=>{"customer"=>nil},
   "created_at"=>"2014-03-05T23:26:12.047635Z",
   "brand"=>"MasterCard",
   "href"=>"/cards/CC4cbNzUmFqGrc1GmFpXp6fe",
   "id"=>"CC4cbNzUmFqGrc1GmFpXp6fe",
   "avs_postal_match"=>nil,
   "is_verified"=>true,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "expiration_year"=>2020,
   "expiration_month"=>12,
   "updated_at"=>"2014-03-05T23:26:15.715688Z",
   "meta"=>
    {"twitter.id"=>"1234987650",
     "my-own-customer-id"=>"12345",
     "facebook.user_id"=>"0192837465"},
   "cvv_result"=>"Match"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
