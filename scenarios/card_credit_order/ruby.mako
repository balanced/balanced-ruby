% if mode == 'definition':
Balanced::Order.credit_to
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

order = Balanced::Order.fetch('/orders/OR6c6n11zKSFfjE6kGNKtsE8')
card = Balanced::Card.fetch('/cards/CC7bBGoeKPe5DBKWgduZd5Cl')
order.credit_to(
    :source => card,
    :amount => 5000
)
% elif mode == 'response':
#<Balanced::Credit:0x007fcde395cfc8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-12-17T21:25:06.303877Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7gmj42wn3NG2br01RjK1k9",
   "id"=>"CR7gmj42wn3NG2br01RjK1k9",
   "links"=>
    {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
     "destination"=>"CC7bBGoeKPe5DBKWgduZd5Cl",
     "order"=>"OR6c6n11zKSFfjE6kGNKtsE8"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CRPDQ-Y1M-24PV",
   "updated_at"=>"2014-12-17T21:25:06.683745Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fcde3954c60/lib/balanced/resources/resource.rb:56 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde394c4e8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde3944338/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde393d9c0/lib/balanced/resources/resource.rb:56 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde39361e8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
