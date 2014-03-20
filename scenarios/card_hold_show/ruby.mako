% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card_hold = Balanced::CardHold.fetch('/card_holds/HL73rLlJ9e9d0jCowQ1BZUSP')

% elif mode == 'response':
#<Balanced::CardHold:0x007fbaa582ebc0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-03-20T18:17:32.915781Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-03-27T18:17:33.075030Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL73rLlJ9e9d0jCowQ1BZUSP",
   "id"=>"HL73rLlJ9e9d0jCowQ1BZUSP",
   "links"=>{"card"=>"CC72u3c6W1c67gNEnrMGHc7Y", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL641-654-0600",
   "updated_at"=>"2014-03-20T18:17:33.221006Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fbaa582cfc8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fbaa582c618/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa49e2620/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa49e0618/lib/balanced/utils.rb:6 (lambda)>}>

% endif
