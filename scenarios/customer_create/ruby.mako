% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

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
#<Balanced::Customer:0x007fdc9e816a78
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-01-27T22:57:36.586782Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU3eeasZ9yQ86uzzIYZkrPGg",
   "id"=>"CU3eeasZ9yQ86uzzIYZkrPGg",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-01-27T22:57:37.740442Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fdc9e815830/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fdc9e80e7b0/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fdc9e80dbd0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fdc9e807820/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9e8055c0/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fdc9e804bc0/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fdc9c34b310/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9c348f70/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fdc9c3436d8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9c342b20/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fdc9c340758/lib/balanced/utils.rb:6 (lambda)>}>

% endif
