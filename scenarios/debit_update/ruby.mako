% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

debit = Balanced::Debit.fetch('/debits/WD4scrlw85LkeIEQqOx3AgUW')
debit.description = 'New description for debit'
debit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x10e2f3370
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
   "description"=>"New description for debit",
   "created_at"=>"2014-03-05T23:26:17.612909Z",
   "id"=>"WD4scrlw85LkeIEQqOx3AgUW",
   "href"=>"/debits/WD4scrlw85LkeIEQqOx3AgUW",
   "meta"=>{"facebook.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:46.305817Z",
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
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
