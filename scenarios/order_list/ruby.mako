% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x007fcde1382118
  @attributes=
   {"amount"=>10000,
    "amount_escrowed"=>4000,
    "created_at"=>"2014-12-17T21:24:07.380654Z",
    "currency"=>"USD",
    "delivery_address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "description"=>"Order #12341234",
    "href"=>"/orders/OR6c6n11zKSFfjE6kGNKtsE8",
    "id"=>"OR6c6n11zKSFfjE6kGNKtsE8",
    "links"=>{"merchant"=>"CU68iUpvvUwpRpuuBL3u9Slq"},
    "meta"=>{},
    "updated_at"=>"2014-12-17T21:24:07.380656Z"},
  @hyperlinks=
   {"buyers"=>
     #<Proc:0x007fcde1380070/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fcde13721a0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde1370300/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fcde134a420/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fcde1348a80/lib/balanced/resources/resource.rb:56 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde131abf8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde1318d58/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Order:0x007fcde1318d08
  @attributes=
   {"amount"=>0,
    "amount_escrowed"=>0,
    "created_at"=>"2014-12-17T21:25:55.028602Z",
    "currency"=>"USD",
    "delivery_address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "description"=>"Order #12341234",
    "href"=>"/orders/ORm6xuCp6tf0DZMp7ESoOj3",
    "id"=>"ORm6xuCp6tf0DZMp7ESoOj3",
    "links"=>{"merchant"=>"CU7yoUz1HuDE7t7p9GcVNYbz"},
    "meta"=>{},
    "updated_at"=>"2014-12-17T21:25:55.028603Z"},
  @hyperlinks=
   {"buyers"=>
     #<Proc:0x007fcde3adad00/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fcde3ad8f50/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde12b3110/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fcde12b1310/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fcde12a3918/lib/balanced/resources/resource.rb:56 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde12a1a78/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde129b830/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
