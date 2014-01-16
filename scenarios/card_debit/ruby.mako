% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::Card.find('/cards/CC3l20ZPAeDRcEWbYi0jbAHt')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x107248990
 @attributes=
  {"transaction_number"=>"W229-063-7736",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:48.313624Z",
   "meta"=>{},
   "links"=>
    {"customer"=>"CU3icqpTA5n8LTkqcmRpwqPZ",
     "order"=>nil,
     "source"=>"CC3l20ZPAeDRcEWbYi0jbAHt"},
   "href"=>"/debits/WD3GNPmi4QkBHzTZNvMt11MA",
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "id"=>"WD3GNPmi4QkBHzTZNvMt11MA",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:57:49.500120Z",
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
