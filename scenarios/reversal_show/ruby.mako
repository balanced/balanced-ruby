% if mode == 'definition':
Balanced::Reversal.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

reversal = Balanced::Reversal.fetch('/reversals/RV1Lqw4ZTPoeuldngynU1z6J')

% elif mode == 'response':
#<Balanced::Reversal:0x007fb793a8b568
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
    #<Proc:0x007fb793a89538/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb793a7f588/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793a7e8e0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
