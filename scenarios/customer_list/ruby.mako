% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fc09c9b56e0
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-01T16:38:55.908512Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CUUybBMdV1fZ7BXjdL58BVt",
    "id"=>"CUUybBMdV1fZ7BXjdL58BVt",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-01T16:38:56.457333Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fc09c9af6c8/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fc09c9ad8f0/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fc09c9a7360/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fc09c9a4ca0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09c9a26a8/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fc09c9a19d8/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fc09c99b308/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fc09c998b30/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fc09c9922f8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fc09c98bb60/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fc09c98b1b0/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fc09c988cd0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fc09c988c58
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-01T16:38:15.451387Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CUb38G1IRIovbbaJlMMKUqG",
    "id"=>"CUb38G1IRIovbbaJlMMKUqG",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-01T16:38:15.999921Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fc09c982830/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fc09c9808f0/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fc09cbf2750/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fc09cbf0630/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09cbea5c8/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fc09cbe9bf0/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fc09cbe3cc8/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fc09cbe1f18/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fc09cbd7e78/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fc09cbd5880/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fc09cbd4bd8/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fc09c941ad8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
