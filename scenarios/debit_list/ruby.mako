% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fbaa335c7e8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-03-20T18:17:52.274298Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD7pddP29XzWJaKVUlMKETIb",
    "id"=>"WD7pddP29XzWJaKVUlMKETIb",
    "links"=>
     {"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC7mV4UKT6jJOh6nerLFvHJu"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W994-941-8993",
    "updated_at"=>"2014-03-20T18:17:53.391444Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fbaa333acd8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fbaa3338438/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fbaa3340ae8/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fbaa3343518/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fbaa332f310/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fbaa331f2f8/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fbaa331f2a8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-03-20T18:17:38.132058Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD79jzWY34PvtKnLbvlFsZok",
    "id"=>"WD79jzWY34PvtKnLbvlFsZok",
    "links"=>
     {"customer"=>"CU6nhM0U1TMK0aJS68CN03SS",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC72u3c6W1c67gNEnrMGHc7Y"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W504-951-9328",
    "updated_at"=>"2014-03-20T18:17:39.077226Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fbaa3313c28/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fbaa33123c8/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fbaa32f3bd0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fbaa32f2a00/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fbaa32ea440/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fbaa32e3848/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
