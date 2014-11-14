% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::Card.new(
  :expiration_month => '05',
  :expiration_year => '2020',
  :name => 'Johannes Bach',
  :number => '4342561111111118'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fa0e13ddcc0
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
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>"Johannes Bach",
   "number"=>"xxxxxxxxxxxx1118",
   "type"=>"debit",
   "updated_at"=>"2014-11-14T19:36:40.117367Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa0e13d2460@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa0e13c72e0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e13c2a60@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e138d1f8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa0e1381e48@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
