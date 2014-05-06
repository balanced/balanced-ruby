% if mode == 'definition':
Balanced::Order.debit_from
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

order = Balanced::Order.fetch('/orders/OR5QcYnwysJXQswImokq6ZSx')
card = Balanced::Card.fetch('/cards/CC5OD6648yiKfSzfj6z6MdXr')
order.debit_from(
    :source => card,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x007fd2043b3f98
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*example.com",
   "created_at"=>"2014-05-05T16:53:15.041569Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD5QtHXAKrVhBOXjDDNCJX5b",
   "id"=>"WD5QtHXAKrVhBOXjDDNCJX5b",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>"OR5QcYnwysJXQswImokq6ZSx",
     "source"=>"CC5OD6648yiKfSzfj6z6MdXr"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W550-229-3761",
   "updated_at"=>"2014-05-05T16:53:15.911296Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fd2043b2a08/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fd2043b1f90/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fd2043afad8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fd2043ada08/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fd2043aa2b8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fd2043a7bf8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
