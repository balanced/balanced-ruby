% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card_hold = Balanced::CardHold.fetch('/card_holds/HL6ZzVVWQngH6S8RZOptz7Ak')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fcde18ff2f8
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
   "updated_at"=>"2014-12-17T21:24:52.515923Z",
   "voided_at"=>"2014-12-17T21:24:52.158210Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fcde18fd7c8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debit"=>
    #<Proc:0x007fcde18fce40/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde1906eb8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1904f50/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde19045a0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
