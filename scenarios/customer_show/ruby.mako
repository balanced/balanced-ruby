% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

customer = Balanced::Customer.fetch('/customers/CUrtoxuYO4XmXZi6NzXKBLL')
% elif mode == 'response':
#<Balanced::Customer:0x007fb60b1f81f0
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-25T22:00:47.619359Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CUrtoxuYO4XmXZi6NzXKBLL",
   "id"=>"CUrtoxuYO4XmXZi6NzXKBLL",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-25T22:00:47.810824Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fb60b1ec940/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fb60b1e5af0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fb60b1dd530/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb60b1d3878/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b1c6a60/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fb60b1c5368/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fb60b1b1d40/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fb60b1a8a38/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b19c0f8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60b18e5e8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b18c720/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fb60b17f7c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
