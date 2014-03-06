% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

customer = Balanced::Customer.new(
  :address => {
    :postal_code => '48120'
  },
  :name => 'Henry Ford',
  :dob_month => 7,
  :dob_year => 1963
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x106891c80
 @attributes=
  {"email"=>nil,
   "address"=>
    {"line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil,
     "postal_code"=>"48120",
     "city"=>nil,
     "state"=>nil},
   "ssn_last4"=>nil,
   "name"=>"Henry Ford",
   "links"=>{"source"=>nil, "destination"=>nil},
   "created_at"=>"2014-03-05T23:26:36.978761Z",
   "href"=>"/customers/CU4EeI9UPzRcOo2C3j1qFjQj",
   "id"=>"CU4EeI9UPzRcOo2C3j1qFjQj",
   "phone"=>nil,
   "ein"=>nil,
   "dob_month"=>7,
   "updated_at"=>"2014-03-05T23:26:37.374515Z",
   "meta"=>{},
   "merchant_status"=>"underwritten",
   "business_name"=>nil,
   "dob_year"=>1963},
 @hyperlinks=
  {"source"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "bank_accounts"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "cards"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "orders"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "external_accounts"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "transactions"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
