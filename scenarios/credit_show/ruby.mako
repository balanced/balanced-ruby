% if mode == 'definition':
Balanced::Credit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

credit = Balanced::Credit.fetch('/credits/CR7sdDSiBjguD4MM6NtfcGs6')
% elif mode == 'response':
#<Balanced::Credit:0x007fbaa4813358
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-03-20T18:17:54.948020Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7sdDSiBjguD4MM6NtfcGs6",
   "id"=>"CR7sdDSiBjguD4MM6NtfcGs6",
   "links"=>
    {"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw",
     "destination"=>"BA6S1rsNWTCwBugJqjBNQbJU",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR469-739-3539",
   "updated_at"=>"2014-03-20T18:17:55.550070Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa4811260/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fbaa480b7c0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa4808d18/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa1bebe88/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa1be9f98/lib/balanced/utils.rb:6 (lambda)>}>

% endif
