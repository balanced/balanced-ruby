% if mode == 'definition':
Balanced::Customer.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

customer = Balanced::Customer.find('/customers/CU7MdRwQJb8EeITGoHuoM11J')
% elif mode == 'response':
#<Balanced::Customer:0x10eb5ce30
 @attributes=
  {"meta"=>{},
   "links"=>{"destination"=>nil, "source"=>nil},
   "business_name"=>nil,
   "ssn_last4"=>nil,
   "email"=>nil,
   "updated_at"=>"2014-01-16T20:01:34.153215Z",
   "id"=>"CU7MdRwQJb8EeITGoHuoM11J",
   "ein"=>nil,
   "name"=>"Henry Ford",
   "merchant_status"=>"underwritten",
   "dob_year"=>1963,
   "phone"=>nil,
   "href"=>"/customers/CU7MdRwQJb8EeITGoHuoM11J",
   "dob_month"=>7,
   "created_at"=>"2014-01-16T20:01:33.603805Z",
   "address"=>
    {"city"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "state"=>nil,
     "country_code"=>nil,
     "postal_code"=>"48120"}},
 @hyperlinks=
  {"credits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "transactions"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "cards"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "bank_accounts"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "orders"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
