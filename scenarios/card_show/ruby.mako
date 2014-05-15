% if mode == 'definition':
Balanced::Card.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC4gG6BE70pMOYKPBive9qoF')
% elif mode == 'response':
#<Balanced::Card:0x007fa7d32ed1c8
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
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "type"=>"",
   "updated_at"=>"2014-05-15T00:40:43.949064Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa7d32ea770/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d32e8628/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d32e7bb0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d32e5c70/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d32b3478/lib/balanced/utils.rb:6 (lambda)>}>

% endif
