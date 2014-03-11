% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

credit = Balanced::Credit.fetch('/credits/CR5XXPwA1ckaTDSIg3593sEx')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fa4e4a4a6b0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-03-06T19:23:08.771807Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR5XXPwA1ckaTDSIg3593sEx",
   "id"=>"CR5XXPwA1ckaTDSIg3593sEx",
   "links"=>
    {"customer"=>"CU5LVuaZG7gURfbA7TuMNoZa",
     "destination"=>"BA5OqdmH8URGBYpilMITWsNW",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR570-678-5174",
   "updated_at"=>"2014-03-06T19:23:14.259690Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa4e4a43f18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa4e4a41f60/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa4e4a3ada0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa4e4a396a8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa4e41cb2c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
