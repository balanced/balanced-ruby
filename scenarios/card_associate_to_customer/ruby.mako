% if mode == 'definition':
Balanced::Customer.add_card

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::Card.find('/cards/CC57fawtA1aGksL4Hhaft4mY')
card.associate_to_customer('/customers/CU546zhmBDn3NEMyP7qXHqe4')

% elif mode == 'response':
#<Balanced::Card:0x1086b7f20
 @attributes=
  {"cvv"=>nil,
   "created_at"=>"2014-01-16T19:23:19.463683Z",
   "cvv_result"=>nil,
   "brand"=>"MasterCard",
   "avs_postal_match"=>nil,
   "name"=>nil,
   "meta"=>{},
   "is_verified"=>true,
   "updated_at"=>"2014-01-16T19:23:19.973611Z",
   "id"=>"CC57fawtA1aGksL4Hhaft4mY",
   "expiration_month"=>12,
   "cvv_match"=>nil,
   "avs_result"=>nil,
   "expiration_year"=>2020,
   "avs_street_match"=>nil,
   "links"=>{"customer"=>"CU546zhmBDn3NEMyP7qXHqe4"},
   "number"=>"xxxxxxxxxxxx5100",
   "href"=>"/cards/CC57fawtA1aGksL4Hhaft4mY",
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "card_holds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
