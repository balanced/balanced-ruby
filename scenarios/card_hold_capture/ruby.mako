% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card_hold = Balanced::CardHold.fetch('/card_holds/HL363Kap0nkbuV050V9DHpjf')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d319ac30
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-05-15T00:39:50.951932Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD3j4fH7OIZgWaAF3SMTTu0l",
   "id"=>"WD3j4fH7OIZgWaAF3SMTTu0l",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC35aRYQB8XnL0CxtKGFG7d3"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W683-224-2501",
   "updated_at"=>"2014-05-15T00:40:04.899900Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d319a0c8/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d31996f0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d3193868/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d3192dc8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d3190dc0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d318f3d0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
