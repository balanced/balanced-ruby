% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

customer = Balanced::Customer.fetch('/customers/CU4GAx8tZTDNIgAmwfV35e53')
% elif mode == 'response':
#<Balanced::Customer:0x007fa93e9f5c60
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-25T20:10:09.606769Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU4GAx8tZTDNIgAmwfV35e53",
   "id"=>"CU4GAx8tZTDNIgAmwfV35e53",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-25T20:10:09.810570Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa93ea1fb50/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa93ea1db48/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa93eb2ff40/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa93eb2e000/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93eb2c070/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa93eb3f760/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa93eb3d938/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa93eb5fa88/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93eb5dc10/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa93eb67d50/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa93eb673a0/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa93eb65550/lib/balanced/utils.rb:6 (lambda)>}>

% endif
