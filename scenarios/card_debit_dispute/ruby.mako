% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.fetch('/cards/CC7Lwi6mzKkqwXrIg5UY1BE9')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fcde111ef70
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-12-17T21:25:34.550152Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD7M75BRYlRsQTImIHFf8O9W",
   "id"=>"WD7M75BRYlRsQTImIHFf8O9W",
   "links"=>
    {"card_hold"=>"HL7M4ZNQjlJRZhhMJGPBVCUM",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC7Lwi6mzKkqwXrIg5UY1BE9"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"WMWY-ZDJ-0RIZ",
   "updated_at"=>"2014-12-17T21:25:35.221519Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde1115fb0/lib/balanced/resources/resource.rb:56 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde1114610/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde10fe158/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde10f90b8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1107320/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde10e6d78/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde10ce458/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
