% if mode == 'definition':
Balanced::Reversal.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

reversals = Balanced::Reversal.all
% elif mode == 'response':
[#<Balanced::Reversal:0x108550678
  @attributes=
   {"created_at"=>"2014-01-16T20:02:18.661532Z",
    "meta"=>
     {"merchant.feedback"=>"positive",
      "fulfillment.item.condition"=>"OK",
      "user.refund_reason"=>"not happy with product"},
    "failure_reason"=>nil,
    "description"=>"Reversal for Order #1111",
    "transaction_number"=>"RV929-157-6227",
    "status"=>"succeeded",
    "links"=>{"order"=>nil, "credit"=>"CRKWhB8EqgH0vnlu2zoFiWA"},
    "failure_reason_code"=>nil,
    "id"=>"RVNN4yEYvtbFh9ZTBkfS7t4",
    "href"=>"/reversals/RVNN4yEYvtbFh9ZTBkfS7t4",
    "amount"=>3000,
    "updated_at"=>"2014-01-16T20:02:20.839540Z",
    "currency"=>"USD"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "credit"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "order"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>]

% endif
