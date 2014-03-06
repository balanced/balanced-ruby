% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

customer = Balanced::Customer.fetch('/customers/CU4xpIqZ7mf2fuLpBoXgoG7m')
% elif mode == 'response':
#<Balanced::Customer:0x1067d60c0
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
   "created_at"=>"2014-03-05T23:26:30.913960Z",
   "href"=>"/customers/CU4xpIqZ7mf2fuLpBoXgoG7m",
   "id"=>"CU4xpIqZ7mf2fuLpBoXgoG7m",
   "phone"=>nil,
   "ein"=>nil,
   "dob_month"=>7,
   "updated_at"=>"2014-03-05T23:26:31.358255Z",
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
