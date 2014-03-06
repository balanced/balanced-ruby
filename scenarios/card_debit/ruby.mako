% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::Card.fetch('/cards/CC4GOYzOKyWXBzJMVTs00aNk')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x10679dd88
 @attributes=
  {"status"=>"succeeded",
   "appears_on_statement_as"=>"BAL*Statement text",
   "links"=>
    {"source"=>"CC4GOYzOKyWXBzJMVTs00aNk",
     "order"=>nil,
     "dispute"=>nil,
     "customer"=>"CU4EeI9UPzRcOo2C3j1qFjQj"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:26:56.846784Z",
   "href"=>"/debits/WD57kmfV9Cgc0MiZkHOmFU1z",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "amount"=>5000,
   "transaction_number"=>"W689-292-5444",
   "id"=>"WD57kmfV9Cgc0MiZkHOmFU1z",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:26:57.800246Z",
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
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
