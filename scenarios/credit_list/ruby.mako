% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007ff2bd9cf178
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"example.com",
    "created_at"=>"2014-03-06T19:23:08.771807Z",
    "currency"=>"USD",
    "description"=>nil,
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/credits/CR5XXPwA1ckaTDSIg3593sEx",
    "id"=>"CR5XXPwA1ckaTDSIg3593sEx",
    "links"=>
     {"customer"=>"CU5LVuaZG7gURfbA7TuMNoZa",
      "destination"=>"BA5OqdmH8URGBYpilMITWsNW",
      "order"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"CR570-678-5174",
    "updated_at"=>"2014-03-06T19:23:09.525306Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007ff2bd9cc608/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007ff2bd9c6be0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007ff2bd9c4390/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007ff2bd9bfe08/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007ff2bd9bd2e8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
