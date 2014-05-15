% if mode == 'definition':
Balanced::Customer.create_order

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

merchant_customer = Balanced::Customer.fetch('/customers/CU56PvhKAwSiV6LahZCcBMJ7')
merchant_customer.create_order(
  :description => 'Order #12341234'
)
% elif mode == 'response':
#<Balanced::Order:0x007fa7d32081e0
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
   "description"=>"Order #12341234",
   "href"=>"/orders/OR6Zx317bzTVRgDxt3JqnZIx",
   "id"=>"OR6Zx317bzTVRgDxt3JqnZIx",
   "links"=>{"merchant"=>"CU56PvhKAwSiV6LahZCcBMJ7"},
   "meta"=>{},
   "updated_at"=>"2014-05-15T00:43:14.079632Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fa7d3204e00/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d3202588/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d31fb8a0/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa7d31f97f8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d31f30d8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d31f1120/lib/balanced/utils.rb:6 (lambda)>}>

% endif
