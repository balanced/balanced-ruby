% if mode == 'definition':
Balanced::CardHold.void

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2ncCO5Bir2S0PCdsDHV3cG')
card_hold.void
% elif mode == 'response':
#<Balanced::CardHold:0x007fdc9d2ee9c0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-01-27T22:56:49.446376Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-02-03T22:56:50.793698Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL2ncCO5Bir2S0PCdsDHV3cG",
   "id"=>"HL2ncCO5Bir2S0PCdsDHV3cG",
   "links"=>{"card"=>"CC2abDOQVm5aNFhHpcRvWS02", "debit"=>nil},
   "meta"=>{},
   "transaction_number"=>"HL102-313-8003",
   "updated_at"=>"2014-01-27T22:56:51.686616Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fdc9d2ec3a0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fdc9c07f988/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9c07da20/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9c25ba18/lib/balanced/utils.rb:6 (lambda)>}>

% endif
