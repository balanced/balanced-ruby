% if mode == 'definition':
Balanced::Order.debit_from
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

order = Balanced::Order.fetch('/orders/OR6c6n11zKSFfjE6kGNKtsE8')
card = Balanced::Card.fetch('/cards/CC73IyzxPUu2z89NH8GrJhLn')
order.debit_from(
    :source => card,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x007fcde12d05d0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*example.com",
   "created_at"=>"2014-12-17T21:25:04.086780Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD7dRwgfkmvirShpxn7JA8JL",
   "id"=>"WD7dRwgfkmvirShpxn7JA8JL",
   "links"=>
    {"card_hold"=>"HL7dQKkSsFJpaZppKe2pB4TX",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>"OR6c6n11zKSFfjE6kGNKtsE8",
     "source"=>"CC73IyzxPUu2z89NH8GrJhLn"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"WG9L-4UP-ZQQN",
   "updated_at"=>"2014-12-17T21:25:04.922248Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde12daa58/lib/balanced/resources/resource.rb:56 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde12da0d0/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde12d9748/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde12e3888/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde12e1ee8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde12e0098/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde12ea6d8/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
