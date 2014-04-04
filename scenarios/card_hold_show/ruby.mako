% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card_hold = Balanced::CardHold.fetch('/card_holds/HLbr4hg4i7Mg2wAEroOwJhk')

% elif mode == 'response':
#<Balanced::CardHold:0x007fc09e2db3b8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-01T16:38:26.958994Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-04-08T16:38:27.034339Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLbr4hg4i7Mg2wAEroOwJhk",
   "id"=>"HLbr4hg4i7Mg2wAEroOwJhk",
   "links"=>{"card"=>"CCnjE94RvMPW7RnmLdzIL42", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL608-811-6933",
   "updated_at"=>"2014-04-01T16:38:27.089203Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fc09e2d98b0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fc09e2d8ed8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e2d2f10/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e2d1048/lib/balanced/utils.rb:6 (lambda)>}>

% endif
