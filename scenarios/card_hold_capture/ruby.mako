% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card_hold = Balanced::CardHold.find('/card_holds/HL4kU88pFb3U5eNoPfVqwRaE')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x1088dcf08
 @attributes=
  {"transaction_number"=>"W666-315-7107",
   "created_at"=>"2014-01-16T19:22:42.329870Z",
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "status"=>"succeeded",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "updated_at"=>"2014-01-16T19:22:43.521094Z",
   "id"=>"WD4rtjVedIGAEBvWKXs0O1gi",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "links"=>
    {"order"=>nil,
     "customer"=>"CU3Nvm0R94mOwJ45fixBWQHc",
     "source"=>"CC4jTPaidxCdN7kXVsTfkM1W"},
   "currency"=>"USD",
   "href"=>"/debits/WD4rtjVedIGAEBvWKXs0O1gi",
   "amount"=>5000},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "refunds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>

% endif
