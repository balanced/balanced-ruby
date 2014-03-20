% if mode == 'definition':
Balanced::Customer.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

customer = Balanced::Customer.fetch('/customers/CU7Ax7eQc4DJfYM0Wt3MqtHW')
% elif mode == 'response':
#<Balanced::Customer:0x007fbaa4039290
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-03-20T18:18:02.329221Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU7Ax7eQc4DJfYM0Wt3MqtHW",
   "id"=>"CU7Ax7eQc4DJfYM0Wt3MqtHW",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-03-20T18:18:03.060502Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fbaa4030578/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fbaa4023288/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fbaa401b4e8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa4018658/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa4007948/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fbaa4006660/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fbaa19adec8/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fbaa34b1148/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa34a8980/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa349b730/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa34984b8/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fbaa347ac38/lib/balanced/utils.rb:6 (lambda)>}>

% endif
