% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x10e4539e0
  @attributes=
   {"dob_month"=>7,
    "ein"=>nil,
    "links"=>{"destination"=>nil, "source"=>nil},
    "name"=>"Henry Ford",
    "merchant_status"=>"underwritten",
    "email"=>nil,
    "created_at"=>"2014-03-05T23:26:30.913960Z",
    "id"=>"CU4xpIqZ7mf2fuLpBoXgoG7m",
    "href"=>"/customers/CU4xpIqZ7mf2fuLpBoXgoG7m",
    "dob_year"=>1963,
    "phone"=>nil,
    "meta"=>{},
    "updated_at"=>"2014-03-05T23:26:31.358255Z",
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
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>,
 #<Balanced::Customer:0x10e436db8
  @attributes=
   {"dob_month"=>7,
    "ein"=>nil,
    "links"=>{"destination"=>nil, "source"=>nil},
    "name"=>"Henry Ford",
    "merchant_status"=>"underwritten",
    "email"=>nil,
    "created_at"=>"2014-03-05T23:26:20.057078Z",
    "id"=>"CU4lcDzIlpDxgcuzHkzC4QHS",
    "href"=>"/customers/CU4lcDzIlpDxgcuzHkzC4QHS",
    "dob_year"=>1963,
    "phone"=>nil,
    "meta"=>{},
    "updated_at"=>"2014-03-05T23:26:20.493999Z",
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
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>]

% endif
