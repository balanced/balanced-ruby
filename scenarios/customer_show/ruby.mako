% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

customer = Balanced::Customer.fetch('/customers/CUUybBMdV1fZ7BXjdL58BVt')
% elif mode == 'response':
#<Balanced::Customer:0x007fc09c0feee8
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-01T16:38:55.908512Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CUUybBMdV1fZ7BXjdL58BVt",
   "id"=>"CUUybBMdV1fZ7BXjdL58BVt",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-01T16:38:56.457333Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fc09c0f6928/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fc09c0eeed0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fc09c0e5538/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09c0ceba8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09c0c6598/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fc09c0c4c20/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fc09c0b4190/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fc09c0a6fb8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09c09dad0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09c08f390/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09c0857a0/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fc09b0b73a0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
