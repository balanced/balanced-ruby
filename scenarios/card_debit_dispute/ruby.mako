% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::Card.fetch('/cards/CCIcOaBZBsK9o6Nbqmuu7B3')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb60b374948
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T22:01:03.293505Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDJ66VlXnDyDx5AS5uplxyt",
   "id"=>"WDJ66VlXnDyDx5AS5uplxyt",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCIcOaBZBsK9o6Nbqmuu7B3"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W417-679-7417",
   "updated_at"=>"2014-04-25T22:01:04.057459Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b373ae8/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b373020/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b371090/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b370690/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b36e750/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b36cd60/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
