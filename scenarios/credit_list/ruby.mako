% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007fbaa48435d0
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
     #<Proc:0x007fbaa4841848/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007fbaa4843710/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fbaa4839fd0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fbaa4839530/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fbaa48338d8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
