% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card_hold = Balanced::CardHold.fetch('/card_holds/HLqY5FcrUWcnBzMkHpKK1WB')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb793b9fe18
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-04-17T22:39:11.899836Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDIDzVvqKBTwEp0GJ4gNBu9",
   "id"=>"WDIDzVvqKBTwEp0GJ4gNBu9",
   "links"=>
    {"customer"=>"CU7EYury1BOjhbW83bqFKfVr",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCCk1CEzUN0gDA5qh8um0rv"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W443-185-7401",
   "updated_at"=>"2014-04-17T22:39:12.557109Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb793b9e248/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb793b9d8c0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793b97358/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793b96958/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793b94b30/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb793b8f298/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
