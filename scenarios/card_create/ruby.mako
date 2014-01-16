% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.new(
  :security_code => '123',
  :number => '5105105105105100',
  :expiration_year => '2020',
  :expiration_month => '12'
).save

% elif mode == 'response':
#<Balanced::Card:0x101e41b30
 @attributes=
  {"fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "meta"=>{},
   "cvv_result"=>nil,
   "links"=>{"customer"=>nil},
   "is_verified"=>true,
   "avs_result"=>nil,
   "created_at"=>"2014-01-16T20:01:42.319861Z",
   "brand"=>"MasterCard",
   "id"=>"CC8VE3J2LlBelNryyr0Rmuk",
   "avs_street_match"=>nil,
   "avs_postal_match"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "cvv_match"=>nil,
   "cvv"=>nil,
   "name"=>nil,
   "updated_at"=>"2014-01-16T20:01:42.319863Z",
   "expiration_year"=>2020,
   "expiration_month"=>12,
   "href"=>"/cards/CC8VE3J2LlBelNryyr0Rmuk"},
 @hyperlinks=
  {"debits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
