% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fefdcc10830
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-03-06T19:23:15.982885Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU5YopHN07Ul5XQnILUifeQT",
    "id"=>"CU5YopHN07Ul5XQnILUifeQT",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-03-06T19:23:16.724050Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fefdcbea748/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fefdcbe8880/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fefdcbdaa00/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fefdcbd8ac0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fefda326af0/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fefda326140/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fefda324318/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fefda31e3a0/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fefda31c528/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fefdb02a530/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fefdb029b80/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fefda307d30/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fefda307ce0
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-03-06T19:23:04.895882Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU5LVuaZG7gURfbA7TuMNoZa",
    "id"=>"CU5LVuaZG7gURfbA7TuMNoZa",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-03-06T19:23:05.747337Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fefda305c60/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fefdb8e3d20/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fefdb8e1de0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fefdb8dbf58/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fefdb8da108/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fefdb8d9758/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fefdb8b3878/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fefdb8b1a28/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fefdb883b50/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fefdb881cb0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fefdb881300/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fefda2f7458/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
