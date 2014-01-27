% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fdc9d223bf8
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
     #<Proc:0x007fdc9d221d80/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fdc9d2213d0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9d22b330/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fdc9d229328/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fdc9d2292d8
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-01-27T22:55:56.619097Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-02-03T22:55:57.540880Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL1pMPzS1JEE4lMCBnKh32Oa",
    "id"=>"HL1pMPzS1JEE4lMCBnKh32Oa",
    "links"=>
     {"card"=>"CC1nrXVKmfh0ouOS7zxI6X8q", "debit"=>"WD1pU48nHJzorOySkTaQGQ9U"},
    "meta"=>{},
    "transaction_number"=>"HL464-208-0908",
    "updated_at"=>"2014-01-27T22:56:00.845902Z"},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fdc9d231e38/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fdc9d23b6e0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9d239110/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fdc9d242c38/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
