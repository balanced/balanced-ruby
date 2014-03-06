% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x10e35af98
  @attributes=
   {"transaction_number"=>"W915-429-9125",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"BAL*Statement text",
    "amount"=>5000,
    "links"=>
     {"source"=>"CC4cbNzUmFqGrc1GmFpXp6fe",
      "order"=>nil,
      "dispute"=>nil,
      "customer"=>nil},
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-03-05T23:26:17.612909Z",
    "id"=>"WD4scrlw85LkeIEQqOx3AgUW",
    "href"=>"/debits/WD4scrlw85LkeIEQqOx3AgUW",
    "meta"=>{},
    "currency"=>"USD",
    "updated_at"=>"2014-03-05T23:26:18.387871Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"source"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "order"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "dispute"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>,
 #<Balanced::Debit:0x10e34fc60
  @attributes=
   {"transaction_number"=>"W093-013-7624",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "amount"=>5000,
    "links"=>
     {"source"=>"CC3ZsWHP2jMgvFrrzDzfZS0q",
      "order"=>nil,
      "dispute"=>nil,
      "customer"=>"CU3EOo1JQiusqvWMhgNOKCQW"},
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-03-05T23:26:06.474907Z",
    "id"=>"WD4fFQTpXCoEa4bBG4M3DilA",
    "href"=>"/debits/WD4fFQTpXCoEa4bBG4M3DilA",
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "currency"=>"USD",
    "updated_at"=>"2014-03-05T23:26:07.432800Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"source"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "order"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "dispute"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>}>]

% endif
