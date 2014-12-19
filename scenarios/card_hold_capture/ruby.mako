% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card_hold = Balanced::CardHold.fetch('/card_holds/HL6RKKEl9zNhtZGgnZaElcwU')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fcde10339d0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-12-17T21:24:49.619850Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD6XBI80Nwyl3IFdM5CktMwE",
   "id"=>"WD6XBI80Nwyl3IFdM5CktMwE",
   "links"=>
    {"card_hold"=>"HL6RKKEl9zNhtZGgnZaElcwU",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC6buB6OEtiIf7DMIKzpJ7k9"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"WCG4-HDE-UGM6",
   "updated_at"=>"2014-12-17T21:24:50.054618Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde101a980/lib/balanced/resources/resource.rb:56 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde1013360/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde10109d0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde08d07b0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde08c0810/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde08a91b0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde089b1c8/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
