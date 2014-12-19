% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

order = Balanced::Order.fetch('/orders/ORm6xuCp6tf0DZMp7ESoOj3')

% elif mode == 'response':
#<Balanced::Order:0x007fcde12135e8
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
    #<Proc:0x007fcde1211400/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde120b6e0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde12098b8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1203a80/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fcde1202018/lib/balanced/resources/resource.rb:56 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde1200128/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde11fa278/lib/balanced/utils.rb:6 (lambda)>}>

% endif
