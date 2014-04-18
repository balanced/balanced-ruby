% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fb7959a2370
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
     #<Proc:0x007fb793f0fa30/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fb793f0f058/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb793f0d258/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb793f0c880/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb793cfa9e8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb793cf90c0/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fb793cf9070
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-04-17T22:39:11.899836Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WDIDzVvqKBTwEp0GJ4gNBu9",
    "id"=>"WDIDzVvqKBTwEp0GJ4gNBu9",
    "links"=>
     {"customer"=>"CU7EYury1BOjhbW83bqFKfVr",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CCCk1CEzUN0gDA5qh8um0rv"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W443-185-7401",
    "updated_at"=>"2014-04-17T22:39:12.557109Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fb7959c3138/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fb7959c2288/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb7959c0348/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb7959bb708/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb7959b97f0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb7959b3d78/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
