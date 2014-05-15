% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

customer = Balanced::Customer.fetch('/customers/CU4ZKTtaAaR7Rc5M8EP2gLlP')
% elif mode == 'response':
#<Balanced::Customer:0x007fa7d1c78d70
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-05-15T00:41:24.028958Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU4ZKTtaAaR7Rc5M8EP2gLlP",
   "id"=>"CU4ZKTtaAaR7Rc5M8EP2gLlP",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-05-15T00:41:24.914750Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa7d1c6aa40/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa7d1c63718/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa7d1c53868/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d1c4ac68/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d1c33748/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa7d1c318f8/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d1c21bb0/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa7d1c13880/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa7d1bfad80/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d1c01db0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d1bf03a8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d1be6b00/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa7d1bdacd8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
