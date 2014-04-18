% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::Card.fetch('/cards/CC1dQyiZY6h896UfGpBAWXOJ')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb793c90598
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-17T22:39:51.088029Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD1qIcVqGE1JrqFJuHH0d1pf",
   "id"=>"WD1qIcVqGE1JrqFJuHH0d1pf",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC1dQyiZY6h896UfGpBAWXOJ"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W303-837-3548",
   "updated_at"=>"2014-04-17T22:39:52.100741Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb793c83910/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb793c82f88/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793c80be8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793c80210/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793c7a130/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb793c78628/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
