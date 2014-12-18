% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

customer = Balanced::Customer.fetch('/customers/CU7s0pNLu0DEtFKtoljSeCAB')
% elif mode == 'response':
#<Balanced::Customer:0x007fcde3995aa8
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
   "email"=>nil,
   "href"=>"/customers/CU7s0pNLu0DEtFKtoljSeCAB",
   "id"=>"CU7s0pNLu0DEtFKtoljSeCAB",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-12-17T21:25:16.874084Z"},
 @hyperlinks=
  {"accounts"=>
    #<Proc:0x007fcde398c688/lib/balanced/utils.rb:6 (lambda)>,
   "bank_accounts"=>
    #<Proc:0x007fcde3984b90/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fcde3966708/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fcde395da68/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde3955138/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde3947d58/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde39469f8/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fcde393ed48/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fcde39377f0/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fcde392f730/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde392c238/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde3925078/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde39241c8/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fcde391d2d8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
