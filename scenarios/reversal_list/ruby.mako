% if mode == 'definition':
Balanced::Reversal.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

reversals = Balanced::Reversal.all
% elif mode == 'response':
[#<Balanced::Reversal:0x007fb793aad398
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-04-17T22:40:20.199870Z",
    "currency"=>"USD",
    "description"=>"Reversal for Order #1111",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/reversals/RV1Lqw4ZTPoeuldngynU1z6J",
    "id"=>"RV1Lqw4ZTPoeuldngynU1z6J",
    "links"=>{"credit"=>"CR1KskgNXcoA6e52QczoCYyF", "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"succeeded",
    "transaction_number"=>"RV365-228-5418",
    "updated_at"=>"2014-04-17T22:40:20.570448Z"},
  @hyperlinks=
   {"credit"=>
     #<Proc:0x007fb793aa77b8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fb793aa58f0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb793aa4f40/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
