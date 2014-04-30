% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x007fb60b8a60d8
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
     #<Proc:0x007fb60b885d60/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb60b852e88/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b836058/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fb60b034be8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb60b8102b8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb60a83aaa0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
