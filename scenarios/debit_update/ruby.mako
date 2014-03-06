% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

debit = Balanced::Debit.fetch('/debits/WD4scrlw85LkeIEQqOx3AgUW')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x1066eb2a0
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
   "description"=>"New description for debit",
   "amount"=>5000,
   "transaction_number"=>"W915-429-9125",
   "id"=>"WD4scrlw85LkeIEQqOx3AgUW",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:26:46.305817Z",
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
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
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
