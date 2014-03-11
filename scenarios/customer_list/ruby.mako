% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fa4e49cb388
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
     #<Proc:0x007fa4e49c84d0/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa4e49c2a58/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa4e49c0410/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa4e49ba8d0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e49b8378/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa4e49b3e18/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa4e49b0bc8/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa4e49aa728/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa4e49a81d0/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa4e49a0ea8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa4e4998438/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa4e499a1e8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fa4e499a0a8
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
     #<Proc:0x007fa4e4992cb8/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa4e2938940/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa4e29385d0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa4e29324c8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e292bab0/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa4e292afe8/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa4e2928c70/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa4e291ae18/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa4e2918780/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa4e41b1c38/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa4e41b0ba8/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa4e497f550/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
