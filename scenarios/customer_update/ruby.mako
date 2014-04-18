% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

customer = Balanced::Customer.fetch('/customers/CU194sQ52I1idiwicbg0mOOB')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fb793f0d0f0
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
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU194sQ52I1idiwicbg0mOOB",
   "id"=>"CU194sQ52I1idiwicbg0mOOB",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-17T22:39:39.258231Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fb793f17050/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fb793f151d8/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fb793f27310/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793f25498/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793f2f5d8/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fb793f2ec28/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fb793f2ce00/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fb793f36f40/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793f350c8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb793f3f208/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb793f3e858/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fb793f3ca08/lib/balanced/utils.rb:6 (lambda)>}>

% endif
