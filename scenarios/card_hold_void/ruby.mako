% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card_hold = Balanced::CardHold.fetch('/card_holds/HLjSXY6l7UHGZD9v0YIbNHM')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fc09e192c18
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-01T16:38:34.472098Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-04-08T16:38:34.541889Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLjSXY6l7UHGZD9v0YIbNHM",
   "id"=>"HLjSXY6l7UHGZD9v0YIbNHM",
   "links"=>{"card"=>"CCnjE94RvMPW7RnmLdzIL42", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL455-649-4634",
   "updated_at"=>"2014-04-01T16:38:35.162562Z",
   "voided_at"=>"2014-04-01T16:38:35.162566Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fc09e191048/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fc09e1906c0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e16a790/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e168850/lib/balanced/utils.rb:6 (lambda)>}>

% endif
