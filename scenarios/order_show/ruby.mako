% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

order = Balanced::Order.fetch('/orders/OR6Zx317bzTVRgDxt3JqnZIx')

% elif mode == 'response':
#<Balanced::Order:0x007fa7d334c588
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
    #<Proc:0x007fa7d3349ef0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d3347dd0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d3344c70/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa7d3342c18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d3340d50/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d333ab58/lib/balanced/utils.rb:6 (lambda)>}>

% endif
