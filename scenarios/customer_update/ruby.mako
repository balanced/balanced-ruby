% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

customer = Balanced::Customer.fetch('/customers/CU33Y4cut21qu1d1lGYDBseQ')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fdc9d2cd360
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-01-27T22:57:27.459187Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CU33Y4cut21qu1d1lGYDBseQ",
   "id"=>"CU33Y4cut21qu1d1lGYDBseQ",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-01-27T22:57:34.512310Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fdc9d2c74d8/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fdc9d2c5480/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fdc9d2bf260/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fdc9d2bd2d0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9d28f8f8/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fdc9d28ed40/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fdc9d28c978/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9d289ea8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fdc9d287748/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9d285740/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fdc9d2b4608/lib/balanced/utils.rb:6 (lambda)>}>

% endif
