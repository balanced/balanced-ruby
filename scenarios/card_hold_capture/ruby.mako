% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4bdnO7ELS2JfyJ2T8elYOl')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa93e819d38
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-04-25T20:09:46.854710Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4gZDOJ1DB443FYcbwNN5EV",
   "id"=>"WD4gZDOJ1DB443FYcbwNN5EV",
   "links"=>
    {"customer"=>"CU3z3rwGWGazDwwyLy0rNqfj",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4auQXiAWMBxJcEUIMYeZFj"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W815-967-5010",
   "updated_at"=>"2014-04-25T20:09:47.351487Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa93e8180c8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa93e8270c8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93e825070/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa93e8245d0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93e810e90/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa93e80aa90/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
