% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::Card.fetch('/cards/CCVkCgaysaNhZH3ITVLmQ9X')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb793cb8840
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-17T22:39:46.207280Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD19cDwPJMMJj6UWn4YI2bGZ",
   "id"=>"WD19cDwPJMMJj6UWn4YI2bGZ",
   "links"=>
    {"customer"=>"CUeXNjpejPooRtSnJLc6SRD",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCVkCgaysaNhZH3ITVLmQ9X"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W087-679-0746",
   "updated_at"=>"2014-04-17T22:39:46.903737Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb793cb2c88/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb793cb2300/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793cb02d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793cab5a0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb793ca8e18/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb793ca2d38/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
