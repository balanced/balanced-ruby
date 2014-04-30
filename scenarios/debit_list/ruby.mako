% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fb60b3a93c8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-04-25T22:00:38.385908Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WDh5j4t3Rkh7oeONR9Izy61",
    "id"=>"WDh5j4t3Rkh7oeONR9Izy61",
    "links"=>
     {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CCf1fF6z2RjwvniinUVefhb"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W249-399-4192",
    "updated_at"=>"2014-04-25T22:00:39.092387Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fb60b3a6df8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fb60b3a6218/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb60b3a3748/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb60b3a29d8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb60b3a02a0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb60b39e338/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fb60b39e2e8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-04-25T22:00:25.687801Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD2NZluFdmQMTHhvyVjSjmp",
    "id"=>"WD2NZluFdmQMTHhvyVjSjmp",
    "links"=>
     {"customer"=>"CU7c8cBtxfllT4M6zDyjbJA1",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC7JlMyXyZ8W3RBfE1SSlnrD"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W113-190-1861",
    "updated_at"=>"2014-04-25T22:00:26.140296Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fb60b39c060/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fb60b39b390/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb60b3991d0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb60b398780/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb60b3963b8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb60b393b90/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
