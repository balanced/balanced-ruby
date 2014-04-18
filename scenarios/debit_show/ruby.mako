% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

debit = Balanced::Debit.fetch('/debits/WDLlpoutDUH8fGfp28GeT0V')

% elif mode == 'response':
#<Balanced::Debit:0x007fb794c0cbc0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-17T22:39:24.996837Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDLlpoutDUH8fGfp28GeT0V",
   "id"=>"WDLlpoutDUH8fGfp28GeT0V",
   "links"=>
    {"customer"=>"CUeXNjpejPooRtSnJLc6SRD",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCVkCgaysaNhZH3ITVLmQ9X"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W766-065-9952",
   "updated_at"=>"2014-04-17T22:39:25.992198Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb793eef168/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb793eee768/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793eec940/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793eeeba0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793ee61d0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb793ee48f8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
