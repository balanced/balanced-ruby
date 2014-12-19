% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

reversal = Balanced::Reversal.fetch('/reversals/RVyHZ2toyTu9BCvGNLsOvLi')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fcde3986b70
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-12-17T21:26:06.246868Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RVyHZ2toyTu9BCvGNLsOvLi",
   "id"=>"RVyHZ2toyTu9BCvGNLsOvLi",
   "links"=>{"credit"=>"CRxBIVaPCDZEbVgE1Jb0jkc", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"pending",
   "transaction_number"=>"RV71F-IRJ-GYVF",
   "updated_at"=>"2014-12-17T21:26:10.853518Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fcde397f550/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde3964cc8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde395f0e8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
