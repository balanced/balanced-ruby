% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card_hold = Balanced::CardHold.fetch('/card_holds/HL73rLlJ9e9d0jCowQ1BZUSP')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fbaa604d478
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-03-20T18:17:38.132058Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD79jzWY34PvtKnLbvlFsZok",
   "id"=>"WD79jzWY34PvtKnLbvlFsZok",
   "links"=>
    {"customer"=>"CU6nhM0U1TMK0aJS68CN03SS",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC72u3c6W1c67gNEnrMGHc7Y"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W504-951-9328",
   "updated_at"=>"2014-03-20T18:17:39.077226Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa58778e8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa5876f60/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa5875110/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa5874738/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa587e8a0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa587cf28/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
