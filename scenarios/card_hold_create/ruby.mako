% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::Card.fetch('/cards/CC72u3c6W1c67gNEnrMGHc7Y')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fbaa5874238
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
   "updated_at"=>"2014-03-20T18:17:40.747810Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fbaa604e490/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fbaa604ce60/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa50aee90/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa50acf28/lib/balanced/utils.rb:6 (lambda)>}>

% endif
