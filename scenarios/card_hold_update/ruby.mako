% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2bT9uMRkTZkfSPmA2pBD9S')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fdc9d2bc678
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-01-27T22:56:39.379941Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-02-03T22:56:39.876902Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL2bT9uMRkTZkfSPmA2pBD9S",
   "id"=>"HL2bT9uMRkTZkfSPmA2pBD9S",
   "links"=>{"card"=>"CC2abDOQVm5aNFhHpcRvWS02", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "transaction_number"=>"HL500-842-5492",
   "updated_at"=>"2014-01-27T22:56:44.255042Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fdc9d2c6dd0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fdc9d2c62b8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9d2cd658/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d2ce210/lib/balanced/utils.rb:6 (lambda)>}>

% endif
