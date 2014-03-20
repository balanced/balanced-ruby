% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

debit = Balanced::Debit.fetch('/debits/WD7pddP29XzWJaKVUlMKETIb')

% elif mode == 'response':
#<Balanced::Debit:0x007fbaa318ca80
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
    #<Proc:0x007fbaa3185348/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa317f380/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa3174070/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa316f228/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa3147e08/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa3145c70/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
