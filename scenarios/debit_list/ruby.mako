% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x101e54410
  @attributes=
   {"meta"=>{},
    "currency"=>"USD",
    "links"=>
     {"source"=>"CC7nvFZYLkB5xPZDrgwcdIO2", "order"=>nil, "customer"=>nil},
    "appears_on_statement_as"=>"BAL*Statement text",
    "status"=>"succeeded",
    "failure_reason_code"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-01-16T20:01:18.123328Z",
    "id"=>"WD7uMejCQlx7A4PN6447H0LK",
    "amount"=>5000,
    "failure_reason"=>nil,
    "transaction_number"=>"W197-518-2707",
    "updated_at"=>"2014-01-16T20:01:20.351754Z",
    "href"=>"/debits/WD7uMejCQlx7A4PN6447H0LK"},
  @hyperlinks=
   {"source"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
    "order"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Debit:0x101e3c888
  @attributes=
   {"meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "currency"=>"USD",
    "links"=>
     {"source"=>"CC728b2nP8zS2QDI8lIIXcFk",
      "order"=>nil,
      "customer"=>"CU6r91gPWrpyaehX1H82kBII"},
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "status"=>"succeeded",
    "failure_reason_code"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-01-16T20:01:00.601394Z",
    "id"=>"WD7b4HIsTSDZQ5xGaddvNYRc",
    "amount"=>5000,
    "failure_reason"=>nil,
    "transaction_number"=>"W524-946-4331",
    "updated_at"=>"2014-01-16T20:01:03.406555Z",
    "href"=>"/debits/WD7b4HIsTSDZQ5xGaddvNYRc"},
  @hyperlinks=
   {"source"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
    "order"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>]

% endif
