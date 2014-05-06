% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

customer = Balanced::Customer.fetch('/customers/CUrtoxuYO4XmXZi6NzXKBLL')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fb60b121268
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-25T22:00:47.619359Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>"email@newdomain.com",
   "href"=>"/customers/CUrtoxuYO4XmXZi6NzXKBLL",
   "id"=>"CUrtoxuYO4XmXZi6NzXKBLL",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{"shipping-preference"=>"ground"},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-25T22:00:51.859983Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fb60b115c88/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fb60b1096e0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fb60b106968/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb60b0fc940/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b0f7170/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fb60b0f5af0/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fb60b0eba28/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fb60b0e1730/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b0dd220/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60b0d2b68/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b095790/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fb60b0a36b0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
