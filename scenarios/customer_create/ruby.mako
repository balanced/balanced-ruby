% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

customer = Balanced::Customer.new(
  :dob_month => 7,
  :name => 'Henry Ford',
  :dob_year => 1963,
  :address => {
    :postal_code => '48120'
  }
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x10e49a020
 @attributes=
  {"dob_month"=>7,
   "ein"=>nil,
   "links"=>{"destination"=>nil, "source"=>nil},
   "name"=>"Henry Ford",
   "merchant_status"=>"underwritten",
   "email"=>nil,
   "created_at"=>"2014-03-05T23:26:36.978761Z",
   "id"=>"CU4EeI9UPzRcOo2C3j1qFjQj",
   "href"=>"/customers/CU4EeI9UPzRcOo2C3j1qFjQj",
   "dob_year"=>1963,
   "phone"=>nil,
   "meta"=>{},
   "updated_at"=>"2014-03-05T23:26:37.374515Z",
   "business_name"=>nil,
   "address"=>
    {"country_code"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "state"=>nil,
     "city"=>nil,
     "postal_code"=>"48120"},
   "ssn_last4"=>nil},
 @hyperlinks=
  {"reversals"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "bank_accounts"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "transactions"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "external_accounts"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "orders"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "cards"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
