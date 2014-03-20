% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card_hold = Balanced::CardHold.fetch('/card_holds/HL73rLlJ9e9d0jCowQ1BZUSP')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fbaa501f3d0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-03-20T18:17:32.915781Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-03-27T18:17:33.075030Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL73rLlJ9e9d0jCowQ1BZUSP",
   "id"=>"HL73rLlJ9e9d0jCowQ1BZUSP",
   "links"=>{"card"=>"CC72u3c6W1c67gNEnrMGHc7Y", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL641-654-0600",
   "updated_at"=>"2014-03-20T18:17:36.992104Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fbaa501d850/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fbaa501cec8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa20a2f08/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa20a0ed8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
