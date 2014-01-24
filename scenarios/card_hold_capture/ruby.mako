% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card_hold = Balanced::CardHold.fetch('/card_holds/HL3iJ3toXGtGHwOyVMD9aT71')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x1084de898
 @attributes=
  {"links"=>
    {"customer"=>"CU2J5ei9GWLvlSGbIcmC6qoO",
     "source"=>"CC3hYX4uMMrNuO0lbYMY0PP9",
     "order"=>nil},
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-24T17:53:30.361991Z",
   "href"=>"/debits/WD3nYFoEh5ipuJQyCSxgBX5l",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"W849-149-0225",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:53:31.160769Z",
   "id"=>"WD3nYFoEh5ipuJQyCSxgBX5l",
   "status"=>"succeeded"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "refunds"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
