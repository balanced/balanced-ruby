% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

customer = Balanced::Customer.fetch('/customers/CU7Ax7eQc4DJfYM0Wt3MqtHW')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fbaa34181c8
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
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU7Ax7eQc4DJfYM0Wt3MqtHW",
   "id"=>"CU7Ax7eQc4DJfYM0Wt3MqtHW",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-03-20T18:18:06.502436Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fbaa340b810/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fbaa3403980/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fbaa3400870/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa33f8e40/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa33eb9e8/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fbaa33ea958/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fbaa33e35e0/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fbaa33db890/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa33d3618/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa33caa90/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa33c8dd0/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fbaa33c12d8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
