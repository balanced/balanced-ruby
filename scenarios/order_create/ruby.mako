% if mode == 'definition':
Balanced::Customer.create_order

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

merchant_customer = Balanced::Customer.fetch('/customers/CUxN95d3eKLokMS6CymVtIB')
merchant_customer.create_order(
  :description => 'Order #12341234'
)
% elif mode == 'response':
#<Balanced::Order:0x007fb60b12d450
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-04-25T22:08:49.530650Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"Order #12341234",
   "href"=>"/orders/OR1oqq5PzdHGkB0GBJJiagNT",
   "id"=>"OR1oqq5PzdHGkB0GBJJiagNT",
   "links"=>{"merchant"=>"CUxN95d3eKLokMS6CymVtIB"},
   "meta"=>{},
   "updated_at"=>"2014-04-25T22:08:49.530653Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fb60b09c450/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb60b118028/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b109be0/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fb60b106878/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b0fbd10/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60b0f6108/lib/balanced/utils.rb:6 (lambda)>}>

% endif
