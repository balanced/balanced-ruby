% if mode == 'definition':
Balanced::Customer.add_card

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.fetch('/cards/CC8VE3J2LlBelNryyr0Rmuk')
card.associate_to_customer('/customers/CU5yzA5nhWv5Ljlr1ZEaYia')

% elif mode == 'response':
#<Balanced::Card:0x10857d268
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
   "links"=>{"customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "id"=>"CC8VE3J2LlBelNryyr0Rmuk",
   "href"=>"/cards/CC8VE3J2LlBelNryyr0Rmuk",
   "updated_at"=>"2014-01-16T20:01:43.262139Z",
   "expiration_year"=>2020},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "card_holds"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
