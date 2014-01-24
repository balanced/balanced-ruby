% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x1086a82a0
  @attributes=
   {"links"=>{"merchant"=>"CU3Ttx347VFA9lYT8dBOkwcu"},
    "meta"=>{},
    "description"=>"Order #12341234",
    "delivery_address"=>
     {"country_code"=>nil,
      "state"=>nil,
      "line2"=>nil,
      "line1"=>nil,
      "postal_code"=>nil,
      "city"=>nil},
    "created_at"=>"2014-01-24T17:54:14.238757Z",
    "href"=>"/orders/OR4bkzheH5eeQpl0J9Dmrx27",
    "amount_escrowed"=>0,
    "amount"=>0,
    "currency"=>"USD",
    "updated_at"=>"2014-01-24T17:54:14.238760Z",
    "id"=>"OR4bkzheH5eeQpl0J9Dmrx27"},
  @hyperlinks=
   {"merchant"=>
     #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
    "refunds"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "reversals"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "buyers"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>]

% endif
