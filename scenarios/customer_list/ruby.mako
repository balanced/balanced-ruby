% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fa6d2107518
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-25T20:10:09.606769Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU4GAx8tZTDNIgAmwfV35e53",
    "id"=>"CU4GAx8tZTDNIgAmwfV35e53",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-25T20:10:09.810570Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fa6d20dcef8/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa6d20ccb70/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa6d20bcdb0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa6d20aec38/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa6d209e298/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa6d2096188/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa6d207d408/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa6d201f178/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa6d205c640/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa6d200b178/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa6d2003f40/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa6d08de4a0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fa6d08de360
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-25T20:09:28.164202Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU3VYCUIfwngJsidJWdGw2W5",
    "id"=>"CU3VYCUIfwngJsidJWdGw2W5",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-25T20:09:28.595435Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fa6d108dc78/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa6d1074958/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa6d1057560/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa6d10440f0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa6d08cfb58/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa6d08c51d0/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa6d08a0a10/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa6d0891b78/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa6d0843928/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa6d22a7b70/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa6d22a7198/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa6d22a52f8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
