% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fa93e9f7420
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-04-25T20:09:59.895549Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD4vEUJj36IpPHTnLKMYzHgh",
    "id"=>"WD4vEUJj36IpPHTnLKMYzHgh",
    "links"=>
     {"customer"=>"CU3VYCUIfwngJsidJWdGw2W5",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC4tvKLTKXcBJAgkGvPEW58N"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W296-328-8320",
    "updated_at"=>"2014-04-25T20:10:00.865462Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa93e9f58a0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa93e9f4f18/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa93ec1ed98/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa93ec1e398/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa93ec17bb0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa93ec16080/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fa93ec15fb8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-04-25T20:09:46.854710Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD4gZDOJ1DB443FYcbwNN5EV",
    "id"=>"WD4gZDOJ1DB443FYcbwNN5EV",
    "links"=>
     {"customer"=>"CU3z3rwGWGazDwwyLy0rNqfj",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC4auQXiAWMBxJcEUIMYeZFj"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W815-967-5010",
    "updated_at"=>"2014-04-25T20:09:47.351487Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa93ec14348/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa93ec0f708/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa93ec077b0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa93ec06dd8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa93ec04f10/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa93ebdf558/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
