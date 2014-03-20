% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::Card.fetch('/cards/CC7mV4UKT6jJOh6nerLFvHJu')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fbaa50ae508
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-03-20T18:18:14.556979Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD1doNnNgRQRLElx7ZHzsXS",
   "id"=>"WD1doNnNgRQRLElx7ZHzsXS",
   "links"=>
    {"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC7mV4UKT6jJOh6nerLFvHJu"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W188-424-6082",
   "updated_at"=>"2014-03-20T18:18:15.668015Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa50ac9d8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa50ac050/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa50b6230/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa50b5858/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa50bfa60/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa50be0e8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
