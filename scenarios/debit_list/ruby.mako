% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x10e99e8a0
  @attributes=
   {"meta"=>{},
    "links"=>
     {"order"=>nil, "source"=>"CC7nvFZYLkB5xPZDrgwcdIO2", "customer"=>nil},
    "amount"=>5000,
    "status"=>"succeeded",
    "updated_at"=>"2014-01-16T20:01:20.351754Z",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"BAL*Statement text",
    "id"=>"WD7uMejCQlx7A4PN6447H0LK",
    "currency"=>"USD",
    "transaction_number"=>"W197-518-2707",
    "href"=>"/debits/WD7uMejCQlx7A4PN6447H0LK",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-01-16T20:01:18.123328Z",
    "failure_reason"=>nil},
  @hyperlinks=
   {"order"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>,
 #<Balanced::Debit:0x10e968fc0
  @attributes=
   {"meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "links"=>
     {"order"=>nil,
      "source"=>"CC728b2nP8zS2QDI8lIIXcFk",
      "customer"=>"CU6r91gPWrpyaehX1H82kBII"},
    "amount"=>5000,
    "status"=>"succeeded",
    "updated_at"=>"2014-01-16T20:01:03.406555Z",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "id"=>"WD7b4HIsTSDZQ5xGaddvNYRc",
    "currency"=>"USD",
    "transaction_number"=>"W524-946-4331",
    "href"=>"/debits/WD7b4HIsTSDZQ5xGaddvNYRc",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-01-16T20:01:00.601394Z",
    "failure_reason"=>nil},
  @hyperlinks=
   {"order"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "refunds"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>]

% endif
