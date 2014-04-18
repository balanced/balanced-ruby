% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

customer = Balanced::Customer.fetch('/customers/CU194sQ52I1idiwicbg0mOOB')
% elif mode == 'response':
#<Balanced::Customer:0x007fb793cf9520
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-17T22:39:35.399913Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU194sQ52I1idiwicbg0mOOB",
   "id"=>"CU194sQ52I1idiwicbg0mOOB",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-17T22:39:35.564842Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fb793d03458/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fb793d015e0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fb793d0b6f8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793d09880/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793d139c0/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fb793d13010/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fb793d111e8/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fb793e33328/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793e314b0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb7958e75e8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb7958e6c38/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fb7958e4de8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
