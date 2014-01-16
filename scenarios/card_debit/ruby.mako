% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.find('/cards/CC8VE3J2LlBelNryyr0Rmuk')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x10e8bf718
 @attributes=
  {"meta"=>{},
   "links"=>
    {"order"=>nil,
     "source"=>"CC8VE3J2LlBelNryyr0Rmuk",
     "customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "amount"=>5000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:02:07.787781Z",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "id"=>"WDyN9045Drn2VaNeJT3MokD",
   "currency"=>"USD",
   "transaction_number"=>"W928-356-6292",
   "href"=>"/debits/WDyN9045Drn2VaNeJT3MokD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:02:05.297720Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "refunds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>

% endif
