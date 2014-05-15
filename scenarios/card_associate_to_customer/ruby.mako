% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC4xXVOyMBDdk7FtzG9HwtBv')
card.associate_to_customer('/customers/CU2L981m9AtPY8pjpGpjnjnf')
% elif mode == 'response':
#<Balanced::Card:0x007fa7d40a7818
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
   "created_at"=>"2014-05-15T00:40:59.321023Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC4xXVOyMBDdk7FtzG9HwtBv",
   "id"=>"CC4xXVOyMBDdk7FtzG9HwtBv",
   "is_verified"=>true,
   "links"=>{"customer"=>"CU2L981m9AtPY8pjpGpjnjnf"},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "type"=>"",
   "updated_at"=>"2014-05-15T00:41:01.104489Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa7d40a5770/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d40e78a0/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d40e5f00/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d40e40b0/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d40ee1f0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
