% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card = Balanced::Card.fetch('/cards/CC3kqm84fxh50avenrUsSKbu')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fdc9d180340
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-01-27T22:58:07.291226Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD3MKNxNTKBGgA7mX50yogiu",
   "id"=>"WD3MKNxNTKBGgA7mX50yogiu",
   "links"=>
    {"customer"=>"CU3eeasZ9yQ86uzzIYZkrPGg",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC3kqm84fxh50avenrUsSKbu"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W180-465-2000",
   "updated_at"=>"2014-01-27T22:58:09.706862Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fdc9d18a4a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9d189af8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d193c10/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9d193210/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9d191398/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9d19b988/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
