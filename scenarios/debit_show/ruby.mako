% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

debit = Balanced::Debit.fetch('/debits/WD7AAkAyeN6YTeHJTn1ThPYA')

% elif mode == 'response':
#<Balanced::Debit:0x007fcde1312d68
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-12-17T21:25:24.286272Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD7AAkAyeN6YTeHJTn1ThPYA",
   "id"=>"WD7AAkAyeN6YTeHJTn1ThPYA",
   "links"=>
    {"card_hold"=>"HL7Az4UI0XU8rHAqmNY0Snp6",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC73IyzxPUu2z89NH8GrJhLn"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"WDQN-HJW-1YIP",
   "updated_at"=>"2014-12-17T21:25:25.027834Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde1311238/lib/balanced/resources/resource.rb:56 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde13108b0/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde1323f50/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1322100/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde13216d8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde1333810/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde1331e98/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
