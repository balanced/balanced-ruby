% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

customer = Balanced::Customer.fetch('/customers/CUUybBMdV1fZ7BXjdL58BVt')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fc09c9ef700
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
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CUUybBMdV1fZ7BXjdL58BVt",
   "id"=>"CUUybBMdV1fZ7BXjdL58BVt",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-01T16:39:00.307671Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fc09c9ed720/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fc09c9f78d8/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fc09c9f5b00/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09c9ffce0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09c9fdf08/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fc09c9fd558/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fc09ca07788/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fc09ca059b0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09ca33b58/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09ca31bf0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09ca31240/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fc09e8075f8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
