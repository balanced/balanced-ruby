% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

customer = Balanced::Customer.fetch('/customers/CU33Y4cut21qu1d1lGYDBseQ')
% elif mode == 'response':
#<Balanced::Customer:0x007fdc9c278fc8
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-01-27T22:57:27.459187Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU33Y4cut21qu1d1lGYDBseQ",
   "id"=>"CU33Y4cut21qu1d1lGYDBseQ",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-01-27T22:57:29.488272Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fdc9c2729c0/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fdc9c2705d0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fdc9c26a8d8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fdc9c2687b8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9c262f70/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fdc9c262368/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fdc9c25bf90/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9c25a5a0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fdc9c258250/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9c07cbe8/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fdc9c07e240/lib/balanced/utils.rb:6 (lambda)>}>

% endif
