% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fa7d2815548
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-05-15T00:41:24.028958Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU4ZKTtaAaR7Rc5M8EP2gLlP",
    "id"=>"CU4ZKTtaAaR7Rc5M8EP2gLlP",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-05-15T00:41:24.914750Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fa7d280c9c0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa7d1e7b9d8/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa7d1e69af8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d1e5ba98/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d1e52358/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa7d1e50738/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa7d1e482e0/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa7d1e3bb08/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa7d1e33980/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa7d1e2a420/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa7d1e0b1b0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa7d1e0a238/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa7d1e01cf0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fa7d1e01c78
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-05-15T00:39:20.790653Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU2L981m9AtPY8pjpGpjnjnf",
    "id"=>"CU2L981m9AtPY8pjpGpjnjnf",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-05-15T00:39:21.958148Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fa7d1de0898/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa7d1dc9738/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa7d1dc1a60/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d1db8730/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d1dab350/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa7d1daa298/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa7d1da1530/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa7d1d92328/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa7d1d83170/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa7d1d79558/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa7d1d71d08/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa7d1d70228/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa7d1d639d8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
