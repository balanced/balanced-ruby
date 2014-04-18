% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card_hold = Balanced::CardHold.fetch('/card_holds/HLqY5FcrUWcnBzMkHpKK1WB')

% elif mode == 'response':
#<Balanced::CardHold:0x007fb793afe888
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-17T22:39:06.875506Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-04-24T22:39:06.984691Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLqY5FcrUWcnBzMkHpKK1WB",
   "id"=>"HLqY5FcrUWcnBzMkHpKK1WB",
   "links"=>{"card"=>"CCCk1CEzUN0gDA5qh8um0rv", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL019-852-0737",
   "updated_at"=>"2014-04-17T22:39:07.063348Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb793afcc18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb793afc218/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793af64d0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793af4450/lib/balanced/utils.rb:6 (lambda)>}>

% endif
