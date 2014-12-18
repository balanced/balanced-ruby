% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.fetch('/cards/CC6buB6OEtiIf7DMIKzpJ7k9')
card.hold(
  :amount => 5000,
  :order => '/orders/OR6c6n11zKSFfjE6kGNKtsE8'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fcde12f07e0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-12-17T21:24:42.793067Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-12-24T21:24:43.058281Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL6PVNaA1GWBdqnxhOfauxlm",
   "id"=>"HL6PVNaA1GWBdqnxhOfauxlm",
   "links"=>
    {"card"=>"CC6buB6OEtiIf7DMIKzpJ7k9",
     "debit"=>nil,
     "order"=>"OR6c6n11zKSFfjE6kGNKtsE8"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HLRNL-8VJ-BWFX",
   "updated_at"=>"2014-12-17T21:24:43.126760Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fcde12fac68/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debit"=>
    #<Proc:0x007fcde12fa2e0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde12f83a0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde13023f0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1300a78/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
