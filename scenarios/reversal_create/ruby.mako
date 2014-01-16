% if mode == 'definition':
Balanced::Credit.reverse
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

reversal = Balanced::Credit.find('/credits/CRKWhB8EqgH0vnlu2zoFiWA')
credit.reverse(
  :amount => 3000,
  :description => 'Reversal for Order #1111',
  :meta => {
    'user.refund_reason' => 'not happy with product',
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive'
  }
)

% elif mode == 'response':
#<Balanced::Reversal:0x10ea89c88
 @attributes=
  {"meta"=>
    {"user.refund_reason"=>"not happy with product",
     "fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive"},
   "links"=>{"credit"=>"CRKWhB8EqgH0vnlu2zoFiWA", "order"=>nil},
   "amount"=>3000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:02:20.839540Z",
   "failure_reason_code"=>nil,
   "id"=>"RVNN4yEYvtbFh9ZTBkfS7t4",
   "currency"=>"USD",
   "transaction_number"=>"RV929-157-6227",
   "href"=>"/reversals/RVNN4yEYvtbFh9ZTBkfS7t4",
   "description"=>"Reversal for Order #1111",
   "created_at"=>"2014-01-16T20:02:18.661532Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
