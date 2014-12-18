% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.fetch('/cards/CC73IyzxPUu2z89NH8GrJhLn')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fcde38ff620
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-12-17T21:25:30.261603Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD7HiEv2UJV5WlRSAcmGOFKJ",
   "id"=>"WD7HiEv2UJV5WlRSAcmGOFKJ",
   "links"=>
    {"card_hold"=>"HL7Hh1D6bok0wd3Xw3Haq08B",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC73IyzxPUu2z89NH8GrJhLn"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"WTW1-5HD-0TVB",
   "updated_at"=>"2014-12-17T21:25:30.976497Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde38f6958/lib/balanced/resources/resource.rb:56 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde38f56c0/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde38eff90/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde38d6298/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde38cf3d0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde38c5498/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde38bd900/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
