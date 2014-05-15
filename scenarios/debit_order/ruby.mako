% if mode == 'definition':
Balanced::Order.debit_from
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

order = Balanced::Order.fetch('/orders/OR4R53c8wdUiVEUiegSHpwaN')
card = Balanced::Card.fetch('/cards/CC4xXVOyMBDdk7FtzG9HwtBv')
order.debit_from(
    :source => card,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d40fd6a0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*example.com",
   "created_at"=>"2014-05-15T00:41:37.159166Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD5ewolo9HEVQkv8dcyx87gd",
   "id"=>"WD5ewolo9HEVQkv8dcyx87gd",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "dispute"=>nil,
     "order"=>"OR4R53c8wdUiVEUiegSHpwaN",
     "source"=>"CC4xXVOyMBDdk7FtzG9HwtBv"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W941-130-0831",
   "updated_at"=>"2014-05-15T00:41:40.522871Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d4187b48/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d41871c0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d4185370/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d418f988/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d418db38/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d418c1c0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
