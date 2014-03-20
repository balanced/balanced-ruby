% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

order = Balanced::Order.fetch('/orders/ORb1Pk4q78R971l2LFiZwhM')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x007fbaa4a09400
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
   "description"=>"New description for order",
   "href"=>"/orders/ORb1Pk4q78R971l2LFiZwhM",
   "id"=>"ORb1Pk4q78R971l2LFiZwhM",
   "links"=>{"merchant"=>"CU7HlonBKQXhBkwRJdO2kZen"},
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-03-20T18:18:26.898477Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fbaa4a133b0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa4a115b0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa4a1b7b8/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fbaa4a19e18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa4a18068/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa4a22248/lib/balanced/utils.rb:6 (lambda)>}>

% endif
