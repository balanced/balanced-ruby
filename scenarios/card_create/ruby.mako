% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.new(
  :expiration_month => '12',
  :number => '5105105105105100',
  :expiration_year => '2020',
  :security_code => '123'
).save

% elif mode == 'response':
#<Balanced::Card:0x10e99c708
 @attributes=
  {"meta"=>{},
   "cvv"=>nil,
   "links"=>{"customer"=>nil},
   "is_verified"=>true,
   "expiration_month"=>12,
   "updated_at"=>"2014-01-16T20:01:42.319863Z",
   "cvv_match"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "id"=>"CC8VE3J2LlBelNryyr0Rmuk",
   "name"=>nil,
   "expiration_year"=>2020,
   "cvv_result"=>nil,
   "avs_result"=>nil,
   "avs_postal_match"=>nil,
   "href"=>"/cards/CC8VE3J2LlBelNryyr0Rmuk",
   "created_at"=>"2014-01-16T20:01:42.319861Z",
   "avs_street_match"=>nil,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "brand"=>"MasterCard"},
 @hyperlinks=
  {"debits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
