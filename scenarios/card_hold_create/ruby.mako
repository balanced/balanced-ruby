% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card = Balanced::Card.fetch('/cards/CC2abDOQVm5aNFhHpcRvWS02')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fdc9d1f3868
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
   "updated_at"=>"2014-01-27T22:56:51.115729Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fdc9d1f1900/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fdc9d1f0e38/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9d1faa78/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d1f88b8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
