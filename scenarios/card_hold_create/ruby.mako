% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::Card.fetch('/cards/CCCk1CEzUN0gDA5qh8um0rv')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fb793b6f128
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
   "updated_at"=>"2014-04-17T22:39:14.097528Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb793b6d698/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb793b6cd10/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793b66c08/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793b64a70/lib/balanced/utils.rb:6 (lambda)>}>

% endif
