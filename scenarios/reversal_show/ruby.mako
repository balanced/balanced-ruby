% if mode == 'definition':
Balanced::Reversal.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

reversal = Balanced::Reversal.fetch('/reversals/RV4rAoQcd3EkOS6rLAUFLrs4')

% elif mode == 'response':
#<Balanced::Reversal:0x108697748
 @attributes=
  {"links"=>{"order"=>nil, "credit"=>"CR4qcbNcps5TuZFDDcV1XZdu"},
   "meta"=>
    {"user.refund_reason"=>"not happy with product",
     "merchant.feedback"=>"positive",
     "fulfillment.item.condition"=>"OK"},
   "failure_reason"=>nil,
   "description"=>"Reversal for Order #1111",
   "created_at"=>"2014-01-24T17:54:28.723409Z",
   "href"=>"/reversals/RV4rAoQcd3EkOS6rLAUFLrs4",
   "failure_reason_code"=>nil,
   "amount"=>3000,
   "transaction_number"=>"RV940-780-3320",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:54:29.436514Z",
   "id"=>"RV4rAoQcd3EkOS6rLAUFLrs4",
   "status"=>"succeeded"},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "credit"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
