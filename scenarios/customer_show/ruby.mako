% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.fetch('/customers/CU5YopHN07Ul5XQnILUifeQT')
% elif mode == 'response':
#<Balanced::Customer:0x007ff2bdaf2028
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
    #<Proc:0x007ff2bdafb858/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007ff2bdaf81d0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007ff2bc93c928/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007ff2bc932428/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007ff2bc92b588/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007ff2bc92a840/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007ff2bc9232e8/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007ff2bc921b78/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007ff2bc913be0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007ff2bc9113b8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007ff2bc9105d0/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007ff2bc919ea0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
