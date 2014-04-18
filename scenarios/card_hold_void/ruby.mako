% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card_hold = Balanced::CardHold.fetch('/card_holds/HLKUg5lJJ5fQZpvaAujCWZH')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fb793aad7f8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-17T22:39:13.915486Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-04-24T22:39:14.014926Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLKUg5lJJ5fQZpvaAujCWZH",
   "id"=>"HLKUg5lJJ5fQZpvaAujCWZH",
   "links"=>{"card"=>"CCCk1CEzUN0gDA5qh8um0rv", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL198-143-2621",
   "updated_at"=>"2014-04-17T22:39:14.562891Z",
   "voided_at"=>"2014-04-17T22:39:14.562893Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb793aa7e98/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb793aa74c0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793aa5558/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793a9f568/lib/balanced/utils.rb:6 (lambda)>}>

% endif
