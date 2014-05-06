% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

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
#<Balanced::Customer:0x007fb60b3357e8
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-25T22:00:53.236370Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CUxN95d3eKLokMS6CymVtIB",
   "id"=>"CUxN95d3eKLokMS6CymVtIB",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-25T22:00:53.428856Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fb60b332d68/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fb60b3302e8/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fb60b32d070/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb60b32a3c0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b2f6908/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fb60b2f5a30/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fb60a8f7010/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fb60a8f3c80/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60a8f0ad0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60a8e4de8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b2a3ed8/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fb60b285fc8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
