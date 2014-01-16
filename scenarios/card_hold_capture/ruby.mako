% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card_hold = Balanced::CardHold.find('/card_holds/HL2AG5YIRZsWCFh5NwigrvJg')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x1075a9d00
 @attributes=
  {"transaction_number"=>"W096-739-8629",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:56:53.502811Z",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "links"=>
    {"customer"=>"CU22SmWz4KC95LEGPRZWXqtp",
     "order"=>nil,
     "source"=>"CC2zLkKYc57B1SMT5i13W63m"},
   "href"=>"/debits/WD2H9NxmLiyCiAgTye0BsBui",
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "id"=>"WD2H9NxmLiyCiAgTye0BsBui",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:56:54.469861Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "refunds"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
