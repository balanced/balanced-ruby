% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card_hold = Balanced::CardHold.fetch('/card_holds/HL736xeYybSdGDib5WhKC4da')
debit = card_hold.capture(
  :description => 'Some descriptive text for the debit in the dashboard',
  :appears_on_statement_as => 'ShowsUpOnStmt'
)

% elif mode == 'response':
#<Balanced::Debit:0x1087aaa18
 @attributes=
  {"created_at"=>"2014-01-16T20:01:00.601394Z",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "transaction_number"=>"W524-946-4331",
   "status"=>"succeeded",
   "links"=>
    {"customer"=>"CU6r91gPWrpyaehX1H82kBII",
     "source"=>"CC728b2nP8zS2QDI8lIIXcFk",
     "order"=>nil},
   "failure_reason_code"=>nil,
   "id"=>"WD7b4HIsTSDZQ5xGaddvNYRc",
   "href"=>"/debits/WD7b4HIsTSDZQ5xGaddvNYRc",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:01:03.406555Z",
   "currency"=>"USD",
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt"},
 @hyperlinks=
  {"refunds"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "source"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
