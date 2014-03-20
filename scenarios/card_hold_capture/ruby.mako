% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card_hold = Balanced::CardHold.fetch('/card_holds/HL5wAfv8JaMsEn9idXrLZZZT')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fefdcc18558
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-03-06T19:22:49.584629Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD5Co9XwRZJg1QtvC5QeekhX",
   "id"=>"WD5Co9XwRZJg1QtvC5QeekhX",
   "links"=>
    {"customer"=>"CU4Wt8xSbREzV2NWtdVAFGeR",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC5nCSU0yFp3qxR4p6UZST7y"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W493-697-4873",
   "updated_at"=>"2014-03-06T19:22:50.608819Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fefda3569f8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fefda356070/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fefda354220/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fefda35f800/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fefda35d9b0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fefda35c038/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
