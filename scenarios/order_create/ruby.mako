% if mode == 'definition':
Balanced::Customer.create_order

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

merchant_customer = Balanced::Customer.fetch('/customers/CU7HlonBKQXhBkwRJdO2kZen')
merchant_customer.create_order(
  :description => 'Order #12341234'
)
% elif mode == 'response':
#<Balanced::Order:0x007fbaa503dce0
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-03-20T18:18:23.280026Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"Order #12341234",
   "href"=>"/orders/ORb1Pk4q78R971l2LFiZwhM",
   "id"=>"ORb1Pk4q78R971l2LFiZwhM",
   "links"=>{"merchant"=>"CU7HlonBKQXhBkwRJdO2kZen"},
   "meta"=>{},
   "updated_at"=>"2014-03-20T18:18:23.280029Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fbaa5047c90/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa5045eb8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa5044040/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fbaa40ce700/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa40cc950/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa40d6b30/lib/balanced/utils.rb:6 (lambda)>}>

% endif
