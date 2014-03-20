% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.fetch('/customers/CU5YopHN07Ul5XQnILUifeQT')
% elif mode == 'response':
#<Balanced::Customer:0x007fefda2be540
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
    #<Proc:0x007fefda2bc380/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fefda273018/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fefda2b5828/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fefda26e310/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefda267f88/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fefda267588/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fefda265238/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fefda25f270/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fefda25cd90/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fefdb872be8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fefdb8721e8/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fefda257ea8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
