% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card = Balanced::Card.fetch('/cards/CC3VAbj4Ol8xojVU6MjI0G1F')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x1085f5740
 @attributes=
  {"links"=>
    {"customer"=>"CU3Ttx347VFA9lYT8dBOkwcu",
     "source"=>"CC3VAbj4Ol8xojVU6MjI0G1F",
     "order"=>nil},
   "appears_on_statement_as"=>"BAL*Statement text",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-24T17:54:18.051707Z",
   "href"=>"/debits/WD4fC2Wmv7z7LxWLQptwEv2n",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"W543-191-8122",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:54:20.644370Z",
   "id"=>"WD4fC2Wmv7z7LxWLQptwEv2n",
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
