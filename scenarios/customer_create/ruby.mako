% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

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
#<Balanced::Customer:0x007fa93b3c95b0
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-25T20:10:14.759932Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU4MnFEab304anOtUtEu5hkN",
   "id"=>"CU4MnFEab304anOtUtEu5hkN",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-25T20:10:15.048688Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa93b3ba0d8/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa93b39b8e0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa93b38ac98/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa93b381170/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93b361c30/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa93b35b240/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa93b33b4b8/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa93b32bab8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93b310a88/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa93b31b640/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa93b319c28/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa93b305570/lib/balanced/utils.rb:6 (lambda)>}>

% endif
