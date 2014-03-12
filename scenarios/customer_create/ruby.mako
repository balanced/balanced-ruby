% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.new(
  :address => {
    :postal_code => '48120'
  },
  :dob_month => 7,
  :dob_year => 1963,
  :name => 'Henry Ford'
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fa4e4a197e0
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-03-06T19:23:21.728225Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU64R7DS6DwuXYVg9RTskFK8",
   "id"=>"CU64R7DS6DwuXYVg9RTskFK8",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-03-06T19:23:22.907102Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa4e4a12058/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa4e328f610/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa4e32844b8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa4e32862b8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa4e327e5e0/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa4e327d8e8/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa4e32766b0/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa4e326f720/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa4e326c2a0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa4e3265bd0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa4e3264640/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa4e325e330/lib/balanced/utils.rb:6 (lambda)>}>

% endif
