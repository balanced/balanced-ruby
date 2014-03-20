% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fbaa4a5af08
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
     #<Proc:0x007fbaa4a593d8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fbaa4a58a50/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fbaa5866a70/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fbaa5864b08/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fbaa5864ab8
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-03-20T18:16:58.631147Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-03-27T18:17:01.078262Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL6qSIND0Fc1ZTUOJ5kPLrCU",
    "id"=>"HL6qSIND0Fc1ZTUOJ5kPLrCU",
    "links"=>
     {"card"=>"CC6q1ZRJQbWmUg8unrY8m6pq", "debit"=>"WD6sUralskhrlwZBiphUQhiM"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL331-157-4593",
    "updated_at"=>"2014-03-20T18:17:01.997361Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fbaa6046ec0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fbaa6045520/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fbaa410f5c0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fbaa410d568/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
