% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

customer = Balanced::Customer.fetch('/customers/CU4GAx8tZTDNIgAmwfV35e53')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fa6d25dd858
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
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU4GAx8tZTDNIgAmwfV35e53",
   "id"=>"CU4GAx8tZTDNIgAmwfV35e53",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-25T20:10:13.306289Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa6d25e7790/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa6d25e58f0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa6d25efa58/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa6d25edbe0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa6d25ffd18/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa6d25ff368/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa6d25fd540/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa6d2607658/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa6d26057e0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa6d260f920/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa6d260ef70/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa6d260d120/lib/balanced/utils.rb:6 (lambda)>}>

% endif
