% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

customer = Balanced::Customer.fetch('/customers/CU7s0pNLu0DEtFKtoljSeCAB')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fcde389e550
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-12-17T21:25:16.650481Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU7s0pNLu0DEtFKtoljSeCAB",
   "id"=>"CU7s0pNLu0DEtFKtoljSeCAB",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-12-17T21:25:20.761467Z"},
 @hyperlinks=
  {"accounts"=>
    #<Proc:0x007fcde116beb0/lib/balanced/utils.rb:6 (lambda)>,
   "bank_accounts"=>
    #<Proc:0x007fcde1160498/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fcde1150548/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fcde1141548/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde112e6f0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde1117f68/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde1116000/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fcde110f598/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fcde1107078/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fcde10e6418/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde10cc6d0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde10b6420/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde10b5048/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fcde10aece8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
