% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::Card.new(
  :cvv => '123',
  :expiration_month => '12',
  :expiration_year => '3000',
  :number => '6500000000000002'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fb60b3aed00
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
   "created_at"=>"2014-04-25T22:01:02.497846Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>3000,
   "fingerprint"=>
    "3c667a62653e187f29b5781eeb0703f26e99558080de0c0f9490b5f9c4ac2871",
   "href"=>"/cards/CCIcOaBZBsK9o6Nbqmuu7B3",
   "id"=>"CCIcOaBZBsK9o6Nbqmuu7B3",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx0002",
   "updated_at"=>"2014-04-25T22:01:02.497848Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fb60b3ab218/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb60b3a9e90/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b3a79b0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
