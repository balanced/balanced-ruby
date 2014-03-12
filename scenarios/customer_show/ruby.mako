% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.fetch('/customers/CU5YopHN07Ul5XQnILUifeQT')
% elif mode == 'response':
#<Balanced::Customer:0x007fa4e4114f28
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
    #<Proc:0x007fa4e410eb78/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa4e410c3c8/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa4e4106680/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa4e4104100/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa4e40fe2c8/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa4e40fcb08/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa4e40e6f38/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa4e40e3a68/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa4e40dfdf0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa4e40dce98/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa4e40d4d88/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa4e40d6070/lib/balanced/utils.rb:6 (lambda)>}>

% endif
