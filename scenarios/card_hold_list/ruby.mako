% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fcde18c7bc8
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-12-17T21:24:44.413118Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-12-24T21:24:44.632300Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL6RKKEl9zNhtZGgnZaElcwU",
    "id"=>"HL6RKKEl9zNhtZGgnZaElcwU",
    "links"=>{"card"=>"CC6buB6OEtiIf7DMIKzpJ7k9", "debit"=>nil, "order"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL1YW-4PE-JOHZ",
    "updated_at"=>"2014-12-17T21:24:44.745782Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fcde18c5f30/lib/balanced/resources/resource.rb:56 (lambda)>,
    "debit"=>
     #<Proc:0x007fcde18c55a8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde12ab7a8/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fcde12a9840/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde12a8e90/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fcde12a8e40
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
     #<Proc:0x007fcde12bb2c0/lib/balanced/resources/resource.rb:56 (lambda)>,
    "debit"=>
     #<Proc:0x007fcde12ba938/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde12b8a20/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fcde12c2a98/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde12c1120/lib/balanced/resources/resource.rb:56 (lambda)>}>]

% endif
