% if mode == 'definition':
Balanced::Order.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

order = Balanced::Order.fetch('/orders/OR1s2WQKp0shLH9Qb0LiUfEJ')
card = Balanced::Card.fetch('/cards/CC1r57n36Fbiglw0OcSEkUcN')
order.debit_from(
    :source => card,
    :amount => '5000'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb60b36e728
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-30T04:52:09.695985Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD1skUovzVKZUpVnH2lhV965",
   "id"=>"WD1skUovzVKZUpVnH2lhV965",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>"OR1s2WQKp0shLH9Qb0LiUfEJ",
     "source"=>"CC1r57n36Fbiglw0OcSEkUcN"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W234-839-6815",
   "updated_at"=>"2014-04-30T04:52:10.318488Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b36d198/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b36c720/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b36a268/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b368120/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b364a70/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b3623b0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
