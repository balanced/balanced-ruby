% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007ff2be108840
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
     #<Proc:0x007ff2be0fa740/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007ff2be0e98f0/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007ff2bd881348/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007ff2bd864ba8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007ff2bd861fe8/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007ff2bd8603a0/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007ff2bd850ba8/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007ff2bd8472d8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007ff2bc8a1d10/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007ff2bc89a9c0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007ff2bc899070/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007ff2bc890b00/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007ff2bc890a38
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
     #<Proc:0x007ff2bc888ce8/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007ff2bc881420/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007ff2be0bb0b8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007ff2bc848170/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007ff2be03f878/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007ff2bd833080/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007ff2bc0e5ea0/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007ff2bc0db748/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007ff2bc0082a8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007ff2bdb7b9b8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007ff2bdb7af18/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007ff2bdb78bf0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
