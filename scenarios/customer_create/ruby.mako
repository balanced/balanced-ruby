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
#<Balanced::Customer:0x007fefdb9a9958
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
    #<Proc:0x007fefdb983898/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fefdb9819d0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fefdcc6bb18/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fefdcc69c50/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefdb97bd00/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fefdb97b2b0/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fefdb9793e8/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fefdb9534e0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fefdb951578/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fefda3cf718/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fefda3ced18/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fefda3cce78/lib/balanced/utils.rb:6 (lambda)>}>

% endif
