% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card_hold = Balanced::CardHold.fetch('/card_holds/HLbr4hg4i7Mg2wAEroOwJhk')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fc09e283ca8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-01T16:38:26.958994Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-04-08T16:38:27.034339Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLbr4hg4i7Mg2wAEroOwJhk",
   "id"=>"HLbr4hg4i7Mg2wAEroOwJhk",
   "links"=>{"card"=>"CCnjE94RvMPW7RnmLdzIL42", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL608-811-6933",
   "updated_at"=>"2014-04-01T16:38:31.468447Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fc09e282150/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fc09e2817c8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e27b8f0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e279a28/lib/balanced/utils.rb:6 (lambda)>}>

% endif
