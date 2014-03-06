% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x106752ef0
  @attributes=
   {"status"=>"succeeded",
    "appears_on_statement_as"=>"BAL*Statement text",
    "links"=>
     {"source"=>"CC4cbNzUmFqGrc1GmFpXp6fe",
      "order"=>nil,
      "dispute"=>nil,
      "customer"=>nil},
    "currency"=>"USD",
    "created_at"=>"2014-03-05T23:26:17.612909Z",
    "href"=>"/debits/WD4scrlw85LkeIEQqOx3AgUW",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "amount"=>5000,
    "transaction_number"=>"W915-429-9125",
    "id"=>"WD4scrlw85LkeIEQqOx3AgUW",
    "failure_reason_code"=>nil,
    "updated_at"=>"2014-03-05T23:26:18.387871Z",
    "meta"=>{},
    "failure_reason"=>nil},
  @hyperlinks=
   {"source"=>
     #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
    "events"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "order"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "dispute"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>,
 #<Balanced::Debit:0x106747e38
  @attributes=
   {"status"=>"succeeded",
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "links"=>
     {"source"=>"CC3ZsWHP2jMgvFrrzDzfZS0q",
      "order"=>nil,
      "dispute"=>nil,
      "customer"=>"CU3EOo1JQiusqvWMhgNOKCQW"},
    "currency"=>"USD",
    "created_at"=>"2014-03-05T23:26:06.474907Z",
    "href"=>"/debits/WD4fFQTpXCoEa4bBG4M3DilA",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "amount"=>5000,
    "transaction_number"=>"W093-013-7624",
    "id"=>"WD4fFQTpXCoEa4bBG4M3DilA",
    "failure_reason_code"=>nil,
    "updated_at"=>"2014-03-05T23:26:07.432800Z",
    "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
    "failure_reason"=>nil},
  @hyperlinks=
   {"source"=>
     #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
    "events"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "order"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "dispute"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>]

% endif
