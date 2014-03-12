% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card = Balanced::Card.fetch('/cards/CC68IoCVpoFlkugB7xt52p8C')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa4e2928cc0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-03-06T19:23:44.148512Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD6BKYhbRzlRhfKSE1DcpqS5",
   "id"=>"WD6BKYhbRzlRhfKSE1DcpqS5",
   "links"=>
    {"customer"=>"CU64R7DS6DwuXYVg9RTskFK8",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC68IoCVpoFlkugB7xt52p8C"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W274-713-3734",
   "updated_at"=>"2014-03-06T19:23:45.554127Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa4e2929e68/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa4e29292d8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa4e40a5e70/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa4e48467b0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa4e3039758/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa4e3049b80/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
