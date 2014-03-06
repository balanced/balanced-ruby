% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::Card.fetch('/cards/CC4GOYzOKyWXBzJMVTs00aNk')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x10e3a79d8
 @attributes=
  {"transaction_number"=>"W689-292-5444",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "amount"=>5000,
   "links"=>
    {"source"=>"CC4GOYzOKyWXBzJMVTs00aNk",
     "order"=>nil,
     "dispute"=>nil,
     "customer"=>"CU4EeI9UPzRcOo2C3j1qFjQj"},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-03-05T23:26:56.846784Z",
   "id"=>"WD57kmfV9Cgc0MiZkHOmFU1z",
   "href"=>"/debits/WD57kmfV9Cgc0MiZkHOmFU1z",
   "meta"=>{},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:57.800246Z",
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
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>}>

% endif
