% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.fetch('/cards/CC6buB6OEtiIf7DMIKzpJ7k9')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fcde09b2868
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-12-17T21:24:51.371006Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-12-24T21:24:51.517986Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL6ZzVVWQngH6S8RZOptz7Ak",
   "id"=>"HL6ZzVVWQngH6S8RZOptz7Ak",
   "links"=>{"card"=>"CC6buB6OEtiIf7DMIKzpJ7k9", "debit"=>nil, "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL5JD-E88-HXCG",
   "updated_at"=>"2014-12-17T21:24:51.624161Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fcde09b0d38/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debit"=>
    #<Proc:0x007fcde09b03b0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde09ba400/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde09b8498/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde09cba98/lib/balanced/utils.rb:6 (lambda)>}>

% endif
