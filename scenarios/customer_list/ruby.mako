% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fcde09f0528
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-12-17T21:25:16.650481Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU7s0pNLu0DEtFKtoljSeCAB",
    "id"=>"CU7s0pNLu0DEtFKtoljSeCAB",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-12-17T21:25:16.874084Z"},
  @hyperlinks=
   {"accounts"=>
     #<Proc:0x007fcde09ea420/lib/balanced/utils.rb:6 (lambda)>,
    "bank_accounts"=>
     #<Proc:0x007fcde09e83f0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fcde09c2538/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fcde09c0580/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fcde09a20d0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde09a0258/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fcde099b848/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fcde09999f8/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fcde0993850/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fcde09919d8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde098bb28/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde0989cb0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fcde0989058/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fcde0982820/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fcde09827d0
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-12-17T21:24:04.003984Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU68iUpvvUwpRpuuBL3u9Slq",
    "id"=>"CU68iUpvvUwpRpuuBL3u9Slq",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-12-17T21:24:04.245364Z"},
  @hyperlinks=
   {"accounts"=>
     #<Proc:0x007fcde09801d8/lib/balanced/utils.rb:6 (lambda)>,
    "bank_accounts"=>
     #<Proc:0x007fcde09799a0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fcde0973168/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fcde09708f0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fcde0969fa0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde0963920/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fcde0962e30/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fcde0960608/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fcde093e4b8/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fcde093c280/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde0935e80/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde0934030/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fcde092f558/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fcde092d578/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
