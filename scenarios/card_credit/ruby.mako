% if mode == 'definition':
Balanced::Card.credit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2jJSjIixy2qkOMmIONPtXnawOUftBDRSK')

card = Balanced::Card.fetch('/cards/CC7nMc4BAti7DgvWmpGV5e6N')
card.credit(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Credit:0x007f86fda2eed8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-05-19T20:27:07.904059Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7oh5wk2EfSuMu34r2YzT0l",
   "id"=>"CR7oh5wk2EfSuMu34r2YzT0l",
   "links"=>
    {"customer"=>nil, "destination"=>"CC7nMc4BAti7DgvWmpGV5e6N", "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR018-897-7930",
   "updated_at"=>"2014-05-19T20:27:08.244392Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007f86fda2e2f8/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007f86fda2c778/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007f86fda26788/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007f86fda25d38/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007f86fda1fd98/lib/balanced/utils.rb:6 (lambda)>}>

% endif
