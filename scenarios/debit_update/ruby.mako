% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

debit = Balanced::Debit.fetch('/debits/WD7pddP29XzWJaKVUlMKETIb')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fbaa30f0b58
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-03-20T18:17:52.274298Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD7pddP29XzWJaKVUlMKETIb",
   "id"=>"WD7pddP29XzWJaKVUlMKETIb",
   "links"=>
    {"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC7mV4UKT6jJOh6nerLFvHJu"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W994-941-8993",
   "updated_at"=>"2014-03-20T18:18:13.198069Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa30edfe8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa30ecb70/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa30e8b88/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa30e3778/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa30db898/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa30d8008/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
