% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::Card.fetch('/cards/CC7mV4UKT6jJOh6nerLFvHJu')
card.associate_to_customer('/customers/CU6Puxkmu24SfVbY0oi1fPLw')
% elif mode == 'response':
#<Balanced::Card:0x007fbaa50561f0
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
   "created_at"=>"2014-03-20T18:17:50.227817Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>2020,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "href"=>"/cards/CC7mV4UKT6jJOh6nerLFvHJu",
   "id"=>"CC7mV4UKT6jJOh6nerLFvHJu",
   "is_verified"=>true,
   "links"=>{"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw"},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "updated_at"=>"2014-03-20T18:17:50.696143Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fbaa5054148/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fbaa505e760/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa505c910/lib/balanced/utils.rb:6 (lambda)>}>

% endif
