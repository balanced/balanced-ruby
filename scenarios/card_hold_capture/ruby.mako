% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card_hold = Balanced::CardHold.fetch('/card_holds/HLbr4hg4i7Mg2wAEroOwJhk')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fc09cd68e68
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-04-01T16:38:32.640465Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDhP7maX0Ymia6sAqaiwv3M",
   "id"=>"WDhP7maX0Ymia6sAqaiwv3M",
   "links"=>
    {"customer"=>"CU7ny5y6tdGmz5q0xDQJco9O",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCnjE94RvMPW7RnmLdzIL42"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W966-476-5964",
   "updated_at"=>"2014-04-01T16:38:33.142867Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fc09cd732f0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fc09cd72968/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09cd70bb8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09cd701e0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09cd7a3c0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09cd78ae8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
