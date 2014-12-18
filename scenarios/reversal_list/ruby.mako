% if mode == 'definition':
Balanced::Reversal.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

reversals = Balanced::Reversal.all
% elif mode == 'response':
[#<Balanced::Reversal:0x007fcde3aa0da8
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-12-17T21:26:06.246868Z",
    "currency"=>"USD",
    "description"=>"Reversal for Order #1111",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/reversals/RVyHZ2toyTu9BCvGNLsOvLi",
    "id"=>"RVyHZ2toyTu9BCvGNLsOvLi",
    "links"=>{"credit"=>"CRxBIVaPCDZEbVgE1Jb0jkc", "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"pending",
    "transaction_number"=>"RV71F-IRJ-GYVF",
    "updated_at"=>"2014-12-17T21:26:06.517468Z"},
  @hyperlinks=
   {"credit"=>
     #<Proc:0x007fcde3a93c98/lib/balanced/resources/resource.rb:56 (lambda)>,
    "events"=>
     #<Proc:0x007fcde3a73448/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde3a71198/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
