% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.fetch('/customers/CU5YopHN07Ul5XQnILUifeQT')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fefda210c10
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
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU5YopHN07Ul5XQnILUifeQT",
   "id"=>"CU5YopHN07Ul5XQnILUifeQT",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-03-06T19:23:20.140160Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fefda20eaa0/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fefda20c188/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fefda2061e8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fefda204320/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefda1ea308/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fefda1e9958/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fefdcba0030/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fefdcb929f8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fefdcb88ea8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fefdcb800c8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fefdcb7a920/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fefdcb71690/lib/balanced/utils.rb:6 (lambda)>}>

% endif
