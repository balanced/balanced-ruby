% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x007fa7d33a99b8
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
     #<Proc:0x007fa7d33a28c0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d339be08/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d3399360/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fa7d3392f10/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa7d3390620/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa7d338d268/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Order:0x007fa7d338d1f0
  @attributes=
   {"amount"=>5000,
    "amount_escrowed"=>5000,
    "created_at"=>"2014-05-15T00:41:16.316070Z",
    "currency"=>"USD",
    "delivery_address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "description"=>"Order #12341234",
    "href"=>"/orders/OR4R53c8wdUiVEUiegSHpwaN",
    "id"=>"OR4R53c8wdUiVEUiegSHpwaN",
    "links"=>{"merchant"=>"CU2L981m9AtPY8pjpGpjnjnf"},
    "meta"=>{},
    "updated_at"=>"2014-05-15T00:41:16.316074Z"},
  @hyperlinks=
   {"buyers"=>
     #<Proc:0x007fa7d338a9f0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d3388b78/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d33823b8/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fa7d3380860/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa7d337a960/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa7d3378a48/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
