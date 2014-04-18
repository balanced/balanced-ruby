% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

customer = Balanced::Customer.new(
  :address => {
    :postal_code => '48120'
  },
  :dob_month => 7,
  :dob_year => 1963,
  :name => 'Henry Ford'
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fb793a1b060
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-17T22:39:40.628341Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU1eX3FIMntmCLmi2VfWA2db",
   "id"=>"CU1eX3FIMntmCLmi2VfWA2db",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-17T22:39:40.804922Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fb793a0bde0/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fb7939e9628/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fb7939c9f58/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb7939ba288/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb7939ab170/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fb7939a9118/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fb79399ba18/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fb79397f278/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb79394c1c0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb79393dfd0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb79393cbd0/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fb793934890/lib/balanced/utils.rb:6 (lambda)>}>

% endif
