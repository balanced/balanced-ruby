% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card_hold = Balanced::CardHold.fetch('/card_holds/HLqY5FcrUWcnBzMkHpKK1WB')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fb793ad6dd8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-17T22:39:06.875506Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-04-24T22:39:06.984691Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLqY5FcrUWcnBzMkHpKK1WB",
   "id"=>"HLqY5FcrUWcnBzMkHpKK1WB",
   "links"=>{"card"=>"CCCk1CEzUN0gDA5qh8um0rv", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL019-852-0737",
   "updated_at"=>"2014-04-17T22:39:10.767779Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb793ad51b8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb793ad47e0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793ace7f0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793acc8d8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
