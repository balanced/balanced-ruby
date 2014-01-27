% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fdc9c30b530
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-01-27T22:57:27.459187Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU33Y4cut21qu1d1lGYDBseQ",
    "id"=>"CU33Y4cut21qu1d1lGYDBseQ",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-01-27T22:57:29.488272Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fdc9c308ab0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fdc9c303178/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fdc9c300d88/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fdc9c2fb9f0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9c2f92e0/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fdc9c2f8908/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fdc9c2f27d8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fdc9c2f0730/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fdc9c2eadf8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fdc9c2ea1f0/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fdc9c2e0998/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fdc9c2e09e8
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-01-27T22:57:12.447565Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU2N5goX8AQJE0CCPeapHUsM",
    "id"=>"CU2N5goX8AQJE0CCPeapHUsM",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-01-27T22:57:13.581358Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fdc9c2e1dc0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fdc9c2d9cd8/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fdc9c2da160/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fdc9c2d0cf0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9c2d24d8/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fdc9c2d1948/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fdc9c2caa58/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fdc9c2c9fe0/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fdc9c2c3aa0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fdc9c2c3500/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fdc9c2c11b0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
