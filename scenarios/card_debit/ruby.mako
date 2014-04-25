% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::Card.fetch('/cards/CC4tvKLTKXcBJAgkGvPEW58N')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa6d239e858
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T20:10:20.485474Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4SOTNKiZbBFrmMk6mfszIl",
   "id"=>"WD4SOTNKiZbBFrmMk6mfszIl",
   "links"=>
    {"customer"=>"CU3VYCUIfwngJsidJWdGw2W5",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4tvKLTKXcBJAgkGvPEW58N"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W060-183-8881",
   "updated_at"=>"2014-04-25T20:10:21.476140Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa6d239cbc0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa6d239c1e8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa6d23962e8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa6d2395910/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa6d238f768/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa6d238d648/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
