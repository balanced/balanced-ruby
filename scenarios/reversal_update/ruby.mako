% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

reversal = Balanced::Reversal.fetch('/reversals/RV1Lqw4ZTPoeuldngynU1z6J')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fb793a5c8d0
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-17T22:40:20.199870Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV1Lqw4ZTPoeuldngynU1z6J",
   "id"=>"RV1Lqw4ZTPoeuldngynU1z6J",
   "links"=>{"credit"=>"CR1KskgNXcoA6e52QczoCYyF", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV365-228-5418",
   "updated_at"=>"2014-04-17T22:40:24.560642Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fb793a6ad18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb793a68e50/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793a68428/lib/balanced/utils.rb:6 (lambda)>}>

% endif
