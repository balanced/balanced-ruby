% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

customer = Balanced::Customer.fetch('/customers/CU4ZKTtaAaR7Rc5M8EP2gLlP')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fa7d1b29fc8
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-05-15T00:41:24.028958Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU4ZKTtaAaR7Rc5M8EP2gLlP",
   "id"=>"CU4ZKTtaAaR7Rc5M8EP2gLlP",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-05-15T00:41:28.733238Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa7d1b1a410/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa7d1b09a20/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa7d1af31d0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d1ae87f8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d1adba80/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa7d1ada4a0/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d1ad1c88/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa7d1ac0190/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa7d1ab1028/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d1aa2870/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d1a93848/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d1a8ba80/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa7d1a812d8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
