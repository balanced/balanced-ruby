% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::Card.new(
  :cvv => '123',
  :expiration_month => '12',
  :expiration_year => '3000',
  :number => '6500000000000002'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fb793d2bef8
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
   "brand"=>"Discover",
   "created_at"=>"2014-04-17T22:39:50.334535Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>3000,
   "fingerprint"=>
    "3c667a62653e187f29b5781eeb0703f26e99558080de0c0f9490b5f9c4ac2871",
   "href"=>"/cards/CC1dQyiZY6h896UfGpBAWXOJ",
   "id"=>"CC1dQyiZY6h896UfGpBAWXOJ",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx0002",
   "updated_at"=>"2014-04-17T22:39:50.334538Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fb793d29d10/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb793d292e8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793d23500/lib/balanced/utils.rb:6 (lambda)>}>

% endif
