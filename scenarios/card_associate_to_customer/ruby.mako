% if mode == 'definition':
Balanced::Card.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::Card.fetch('/cards/CC3IBNr3erYpVuuZDyWNFfet')
card.associate_to_customer('/customers/CU40AyvBB6ny9u3oelCwyc3C')
% elif mode == 'response':
#<Balanced::Card:0x007fa0e140ae28
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
   "bank_name"=>"WELLS FARGO BANK, N.A.",
   "brand"=>"Visa",
   "can_credit"=>true,
   "can_debit"=>true,
   "category"=>"other",
   "created_at"=>"2014-11-14T19:36:40.117365Z",
   "cvv"=>nil,
   "cvv_match"=>nil,
   "cvv_result"=>nil,
   "expiration_month"=>5,
   "expiration_year"=>2020,
   "fingerprint"=>
    "7dc93d35b59078a1da8e0ebd2cbec65a6ca205760a1be1b90a143d7f2b00e355",
   "href"=>"/cards/CC3IBNr3erYpVuuZDyWNFfet",
   "id"=>"CC3IBNr3erYpVuuZDyWNFfet",
   "is_verified"=>true,
   "links"=>{"customer"=>"CU40AyvBB6ny9u3oelCwyc3C"},
   "meta"=>{},
   "name"=>"Johannes Bach",
   "number"=>"xxxxxxxxxxxx1118",
   "type"=>"debit",
   "updated_at"=>"2014-11-14T19:36:40.602782Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa0e1408880@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa0e140e9b0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e140d010@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e1413190@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa0e14112f0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
