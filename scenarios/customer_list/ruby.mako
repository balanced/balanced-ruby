% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fa93b24f1f8
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
     #<Proc:0x007fa93b225970/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa93b214710/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa93b204d38/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa93b1f6cb0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93b1e6608/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa93b1de2c8/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa93b1c5200/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa93b17b150/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa93b1a8538/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa93b1734c8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa93b1705e8/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa93b0fe290/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fa93b0fe240
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
     #<Proc:0x007fa93b161de0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa93b148f20/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa93b12b538/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa93b118258/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93b0cfa08/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa93b0c53a0/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa93b0a0898/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa93b091708/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa93b043440/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa93e85fb80/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa93e85f1a8/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa93e85d308/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
