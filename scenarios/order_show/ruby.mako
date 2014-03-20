% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

order = Balanced::Order.fetch('/orders/ORb1Pk4q78R971l2LFiZwhM')

% elif mode == 'response':
#<Balanced::Order:0x007fbaa581ee00
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
    #<Proc:0x007fbaa581ce20/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa5827000/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa5825200/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fbaa49eb838/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa49e9a88/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa49f3c68/lib/balanced/utils.rb:6 (lambda)>}>

% endif
