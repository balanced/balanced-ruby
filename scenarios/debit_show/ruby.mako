% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

debit = Balanced::Debit.fetch('/debits/WDh5j4t3Rkh7oeONR9Izy61')

% elif mode == 'response':
#<Balanced::Debit:0x007fb60b34a4b8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T22:00:38.385908Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDh5j4t3Rkh7oeONR9Izy61",
   "id"=>"WDh5j4t3Rkh7oeONR9Izy61",
   "links"=>
    {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCf1fF6z2RjwvniinUVefhb"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W249-399-4192",
   "updated_at"=>"2014-04-25T22:00:39.092387Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b347b00/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b346fc0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b3446d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b343a78/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60b3414d0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60b33f6f8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
