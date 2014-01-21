% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.new(
  :expiration_month => '12',
  :security_code => '123',
  :number => '5105105105105100',
  :expiration_year => '2020'
).save

% elif mode == 'response':
#<Balanced::Card:0x1084fe5a8
 @attributes=
  {"name"=>nil,
   "expiration_month"=>12,
   "cvv_result"=>nil,
   "created_at"=>"2014-01-16T20:01:42.319861Z",
   "number"=>"xxxxxxxxxxxx5100",
   "avs_street_match"=>nil,
   "cvv"=>nil,
   "meta"=>{},
   "avs_postal_match"=>nil,
   "cvv_match"=>nil,
   "brand"=>"MasterCard",
   "avs_result"=>nil,
   "is_verified"=>true,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "links"=>{"customer"=>nil},
   "id"=>"CC8VE3J2LlBelNryyr0Rmuk",
   "href"=>"/cards/CC8VE3J2LlBelNryyr0Rmuk",
   "updated_at"=>"2014-01-16T20:01:42.319863Z",
   "expiration_year"=>2020},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
