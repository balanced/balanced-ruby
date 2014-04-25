% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::Card.fetch('/cards/CC4XMSQg2OY6rrcrkeEGtLcZ')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa93e856df0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T20:10:25.648099Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4YCKAyFrQBFYuFCUCRynOx",
   "id"=>"WD4YCKAyFrQBFYuFCUCRynOx",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4XMSQg2OY6rrcrkeEGtLcZ"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W630-477-8252",
   "updated_at"=>"2014-04-25T20:10:26.775361Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa93e856198/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa93e8557e8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93e84f8e8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa93e84ef10/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93e84d048/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa93e847670/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
