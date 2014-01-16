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
    'merchant.feedback' => 'positive',
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product'
  }
)

% elif mode == 'response':
#<Balanced::Reversal:0x101f43420
 @attributes=
  {"meta"=>
    {"merchant.feedback"=>"positive",
     "fulfillment.item.condition"=>"OK",
     "user.refund_reason"=>"not happy with product"},
   "currency"=>"USD",
   "links"=>{"order"=>nil, "credit"=>"CRKWhB8EqgH0vnlu2zoFiWA"},
   "status"=>"succeeded",
   "failure_reason_code"=>nil,
   "description"=>"Reversal for Order #1111",
   "created_at"=>"2014-01-16T20:02:18.661532Z",
   "id"=>"RVNN4yEYvtbFh9ZTBkfS7t4",
   "amount"=>3000,
   "failure_reason"=>nil,
   "transaction_number"=>"RV929-157-6227",
   "updated_at"=>"2014-01-16T20:02:20.839540Z",
   "href"=>"/reversals/RVNN4yEYvtbFh9ZTBkfS7t4"},
 @hyperlinks=
  {"order"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credit"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
