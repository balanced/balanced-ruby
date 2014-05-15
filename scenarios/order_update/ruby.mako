% if mode == 'definition':
Balanced::Order.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

order = Balanced::Order.fetch('/orders/OR6Zx317bzTVRgDxt3JqnZIx')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% elif mode == 'response':
#<Balanced::Order:0x007fa7d331ad80
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-05-15T00:43:14.079629Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"New description for order",
   "href"=>"/orders/OR6Zx317bzTVRgDxt3JqnZIx",
   "id"=>"OR6Zx317bzTVRgDxt3JqnZIx",
   "links"=>{"merchant"=>"CU56PvhKAwSiV6LahZCcBMJ7"},
   "meta"=>{"anykey"=>"valuegoeshere", "product.id"=>"1234567890"},
   "updated_at"=>"2014-05-15T00:43:27.654101Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fa7d3318990/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d3316910/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d33145e8/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa7d330ea08/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d330ca28/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d330aa98/lib/balanced/utils.rb:6 (lambda)>}>

% endif
