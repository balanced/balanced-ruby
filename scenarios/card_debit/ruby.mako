% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.find('/cards/CC8VE3J2LlBelNryyr0Rmuk')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x101d64bb8
 @attributes=
  {"meta"=>{},
   "currency"=>"USD",
   "links"=>
    {"source"=>"CC8VE3J2LlBelNryyr0Rmuk",
     "order"=>nil,
     "customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "appears_on_statement_as"=>"BAL*Statement text",
   "status"=>"succeeded",
   "failure_reason_code"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:02:05.297720Z",
   "id"=>"WDyN9045Drn2VaNeJT3MokD",
   "amount"=>5000,
   "failure_reason"=>nil,
   "transaction_number"=>"W928-356-6292",
   "updated_at"=>"2014-01-16T20:02:07.787781Z",
   "href"=>"/debits/WDyN9045Drn2VaNeJT3MokD"},
 @hyperlinks=
  {"source"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
