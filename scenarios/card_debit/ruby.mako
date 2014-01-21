% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.fetch('/cards/CC8VE3J2LlBelNryyr0Rmuk')
card.debit(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000,
  :appears_on_statement_as => 'Statement text'
)

% elif mode == 'response':
#<Balanced::Debit:0x108426608
 @attributes=
  {"created_at"=>"2014-01-16T20:02:05.297720Z",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "transaction_number"=>"W928-356-6292",
   "status"=>"succeeded",
   "links"=>
    {"customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia",
     "source"=>"CC8VE3J2LlBelNryyr0Rmuk",
     "order"=>nil},
   "failure_reason_code"=>nil,
   "id"=>"WDyN9045Drn2VaNeJT3MokD",
   "href"=>"/debits/WDyN9045Drn2VaNeJT3MokD",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:02:07.787781Z",
   "currency"=>"USD",
   "appears_on_statement_as"=>"BAL*Statement text"},
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
