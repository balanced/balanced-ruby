% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card_hold = Balanced::CardHold.fetch('/card_holds/HL7K6mNHtWSl33Whc0WDOJ81')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb60b353f68
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-04-25T22:00:25.687801Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2NZluFdmQMTHhvyVjSjmp",
   "id"=>"WD2NZluFdmQMTHhvyVjSjmp",
   "links"=>
    {"customer"=>"CU7c8cBtxfllT4M6zDyjbJA1",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC7JlMyXyZ8W3RBfE1SSlnrD"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W113-190-1861",
   "updated_at"=>"2014-04-25T22:00:26.140296Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b3515b0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b3506d8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b34d410/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b34c498/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b349540/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b347650/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
