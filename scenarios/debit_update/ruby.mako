% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

debit = Balanced::Debit.fetch('/debits/WD7AAkAyeN6YTeHJTn1ThPYA')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fcde1362728
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-12-17T21:25:24.286272Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
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
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"WDQN-HJW-1YIP",
   "updated_at"=>"2014-12-17T21:25:28.573676Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde1360bf8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde1360270/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde136b8a0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1369a50/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1369078/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde137b1d8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde1379860/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
