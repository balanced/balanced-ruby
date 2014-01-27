% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2bT9uMRkTZkfSPmA2pBD9S')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fdc9d1ba0e0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-01-27T22:56:45.623268Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2iSCukjXyeRdkvX3cW0PmC",
   "id"=>"WD2iSCukjXyeRdkvX3cW0PmC",
   "links"=>
    {"customer"=>"CU1f8Ygc4t0F2FKNcw235x9I",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC2abDOQVm5aNFhHpcRvWS02"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W744-719-1832",
   "updated_at"=>"2014-01-27T22:56:47.926021Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fdc9d1b8268/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9d1c3848/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d1c19d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9d1c0fd0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9d1cb0e8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9d1c9748/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
