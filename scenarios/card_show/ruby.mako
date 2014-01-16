% if mode == 'definition':
Balanced::Card.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::Card.find('/cards/CC4ysIN2SnTC7fx5thqY4Gi4')
% elif mode == 'response':
#<Balanced::Card:0x10885db90
 @attributes=
  {"cvv"=>nil,
   "created_at"=>"2014-01-16T19:22:48.539333Z",
   "cvv_result"=>nil,
   "brand"=>"MasterCard",
   "avs_postal_match"=>nil,
   "name"=>nil,
   "meta"=>{},
   "is_verified"=>true,
   "updated_at"=>"2014-01-16T19:22:48.539337Z",
   "id"=>"CC4ysIN2SnTC7fx5thqY4Gi4",
   "expiration_month"=>12,
   "cvv_match"=>nil,
   "avs_result"=>nil,
   "expiration_year"=>2020,
   "avs_street_match"=>nil,
   "links"=>{"customer"=>nil},
   "number"=>"xxxxxxxxxxxx5100",
   "href"=>"/cards/CC4ysIN2SnTC7fx5thqY4Gi4",
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
