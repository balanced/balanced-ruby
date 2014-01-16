% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::Card.find('/cards/CC57fawtA1aGksL4Hhaft4mY')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x108561860
 @attributes=
  {"transaction_number"=>"W304-131-9976",
   "created_at"=>"2014-01-16T19:23:40.631054Z",
   "appears_on_statement_as"=>"BAL*Statement text",
   "status"=>"succeeded",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:23:43.676092Z",
   "id"=>"WD5v3l1cMnFLrXAvZC2hZTW0",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "links"=>
    {"order"=>nil,
     "customer"=>"CU546zhmBDn3NEMyP7qXHqe4",
     "source"=>"CC57fawtA1aGksL4Hhaft4mY"},
   "currency"=>"USD",
   "href"=>"/debits/WD5v3l1cMnFLrXAvZC2hZTW0",
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
