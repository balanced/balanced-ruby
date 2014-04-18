% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::Card.fetch('/cards/CCVkCgaysaNhZH3ITVLmQ9X')
card.associate_to_customer('/customers/CUeXNjpejPooRtSnJLc6SRD')
% elif mode == 'response':
#<Balanced::Card:0x007fb793d90380
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
   "created_at"=>"2014-04-17T22:39:23.185879Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CCVkCgaysaNhZH3ITVLmQ9X",
   "id"=>"CCVkCgaysaNhZH3ITVLmQ9X",
   "is_verified"=>true,
   "links"=>{"customer"=>"CUeXNjpejPooRtSnJLc6SRD"},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-04-17T22:39:23.629066Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fb793d89f58/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb793d88310/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793d81718/lib/balanced/utils.rb:6 (lambda)>}>

% endif
