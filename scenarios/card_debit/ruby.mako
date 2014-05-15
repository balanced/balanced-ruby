% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC4xXVOyMBDdk7FtzG9HwtBv')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d30da520
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-05-15T00:41:55.448643Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD5z5CvSR6PFx0GgUFn0icKx",
   "id"=>"WD5z5CvSR6PFx0GgUFn0icKx",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4xXVOyMBDdk7FtzG9HwtBv"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W588-680-6120",
   "updated_at"=>"2014-05-15T00:42:17.739744Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d30d8810/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d30d3d38/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d30d1bc8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d30d1128/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d30cb070/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d30c9338/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
