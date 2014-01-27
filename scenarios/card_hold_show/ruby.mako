% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2bT9uMRkTZkfSPmA2pBD9S')

% elif mode == 'response':
#<Balanced::CardHold:0x007fdc9d271808
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-01-27T22:56:39.379941Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-02-03T22:56:39.876902Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL2bT9uMRkTZkfSPmA2pBD9S",
   "id"=>"HL2bT9uMRkTZkfSPmA2pBD9S",
   "links"=>{"card"=>"CC2abDOQVm5aNFhHpcRvWS02", "debit"=>nil},
   "meta"=>{},
   "transaction_number"=>"HL500-842-5492",
   "updated_at"=>"2014-01-27T22:56:40.238140Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fdc9d27bb28/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fdc9d27ab10/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9d2b7dd0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d282180/lib/balanced/utils.rb:6 (lambda)>}>

% endif
