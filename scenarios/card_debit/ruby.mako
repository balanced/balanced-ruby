% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card = Balanced::Card.fetch('/cards/CCHv1QwjLfCxskorXDf8bmm')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fc09cd39d98
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-01T16:39:08.191038Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDVNXTW2eo8YXgikJOXqVgy",
   "id"=>"WDVNXTW2eo8YXgikJOXqVgy",
   "links"=>
    {"customer"=>"CUb38G1IRIovbbaJlMMKUqG",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCHv1QwjLfCxskorXDf8bmm"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W152-864-0774",
   "updated_at"=>"2014-04-01T16:39:08.907001Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fc09cd38308/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fc09cd43938/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09cd41b88/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09cd411b0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09cd4b3b8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09cd49ae0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
