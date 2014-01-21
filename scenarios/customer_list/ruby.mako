% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x108408810
  @attributes=
   {"name"=>"Henry Ford",
    "created_at"=>"2014-01-16T20:01:33.603805Z",
    "merchant_status"=>"underwritten",
    "email"=>nil,
    "ssn_last4"=>nil,
    "meta"=>{},
    "business_name"=>nil,
    "dob_month"=>7,
    "address"=>
     {"city"=>nil,
      "state"=>nil,
      "country_code"=>nil,
      "postal_code"=>"48120",
      "line2"=>nil,
      "line1"=>nil},
    "phone"=>nil,
    "links"=>{"source"=>nil, "destination"=>nil},
    "id"=>"CU7MdRwQJb8EeITGoHuoM11J",
    "href"=>"/customers/CU7MdRwQJb8EeITGoHuoM11J",
    "ein"=>nil,
    "updated_at"=>"2014-01-16T20:01:34.153215Z",
    "dob_year"=>1963},
  @hyperlinks=
   {"refunds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "orders"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "bank_accounts"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "cards"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "transactions"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "reversals"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "destination"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>,
 #<Balanced::Customer:0x1086c8398
  @attributes=
   {"name"=>"Henry Ford",
    "created_at"=>"2014-01-16T20:01:22.446387Z",
    "merchant_status"=>"underwritten",
    "email"=>nil,
    "ssn_last4"=>nil,
    "meta"=>{},
    "business_name"=>nil,
    "dob_month"=>7,
    "address"=>
     {"city"=>nil,
      "state"=>nil,
      "country_code"=>nil,
      "postal_code"=>"48120",
      "line2"=>nil,
      "line1"=>nil},
    "phone"=>nil,
    "links"=>{"source"=>nil, "destination"=>nil},
    "id"=>"CU7zEe4gULEuyvdraVEnKa1Q",
    "href"=>"/customers/CU7zEe4gULEuyvdraVEnKa1Q",
    "ein"=>nil,
    "updated_at"=>"2014-01-16T20:01:23.266943Z",
    "dob_year"=>1963},
  @hyperlinks=
   {"refunds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "orders"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "bank_accounts"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "cards"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "transactions"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "reversals"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "destination"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>]

% endif
