% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::Card.fetch('/cards/CCf1fF6z2RjwvniinUVefhb')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb60b391d68
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T22:00:58.990911Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDEg9ofx83CeAhiwI1QmA17",
   "id"=>"WDEg9ofx83CeAhiwI1QmA17",
   "links"=>
    {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCf1fF6z2RjwvniinUVefhb"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W359-587-1632",
   "updated_at"=>"2014-04-25T22:00:59.631219Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b38f4a0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b38e348/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b38c138/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b38b6e8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b3894b0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b3879d0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
