% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x10850c2c0
  @attributes=
   {"created_at"=>"2014-01-16T20:01:18.123328Z",
    "meta"=>{},
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "transaction_number"=>"W197-518-2707",
    "status"=>"succeeded",
    "links"=>
     {"customer"=>nil, "source"=>"CC7nvFZYLkB5xPZDrgwcdIO2", "order"=>nil},
    "failure_reason_code"=>nil,
    "id"=>"WD7uMejCQlx7A4PN6447H0LK",
    "href"=>"/debits/WD7uMejCQlx7A4PN6447H0LK",
    "amount"=>5000,
    "updated_at"=>"2014-01-16T20:01:20.351754Z",
    "currency"=>"USD",
    "appears_on_statement_as"=>"BAL*Statement text"},
  @hyperlinks=
   {"refunds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "events"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "order"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>,
 #<Balanced::Debit:0x1084d4de8
  @attributes=
   {"created_at"=>"2014-01-16T20:01:00.601394Z",
    "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "transaction_number"=>"W524-946-4331",
    "status"=>"succeeded",
    "links"=>
     {"customer"=>"CU6r91gPWrpyaehX1H82kBII",
      "source"=>"CC728b2nP8zS2QDI8lIIXcFk",
      "order"=>nil},
    "failure_reason_code"=>nil,
    "id"=>"WD7b4HIsTSDZQ5xGaddvNYRc",
    "href"=>"/debits/WD7b4HIsTSDZQ5xGaddvNYRc",
    "amount"=>5000,
    "updated_at"=>"2014-01-16T20:01:03.406555Z",
    "currency"=>"USD",
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt"},
  @hyperlinks=
   {"refunds"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "source"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "events"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "order"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>]

% endif
