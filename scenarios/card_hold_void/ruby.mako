% if mode == 'definition':
Balanced::CardHold.void

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card_hold = Balanced::CardHold.fetch('/card_holds/HL7bTcFBCjdbuf5K5U74XxWU')
card_hold.void
% elif mode == 'response':
#<Balanced::CardHold:0x007fbaa1c158f0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-03-20T18:17:40.426090Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-03-27T18:17:40.638628Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL7bTcFBCjdbuf5K5U74XxWU",
   "id"=>"HL7bTcFBCjdbuf5K5U74XxWU",
   "links"=>{"card"=>"CC72u3c6W1c67gNEnrMGHc7Y", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL025-263-9127",
   "updated_at"=>"2014-03-20T18:17:41.319073Z",
   "voided_at"=>"2014-03-20T18:17:41.319077Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fbaa492b358/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fbaa492a9d0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa4928a90/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa49204a8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
