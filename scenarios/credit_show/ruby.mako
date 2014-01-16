% if mode == 'definition':
Balanced::Credit.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

credit = Balanced::Credit.find('/credits/CR4NONsvrPh7LPXKJfGdLC2W')
% elif mode == 'response':
#<Balanced::Credit:0x1087dcec8
 @attributes=
  {"transaction_number"=>"CR993-913-4615",
   "created_at"=>"2014-01-16T19:23:02.198104Z",
   "appears_on_statement_as"=>"example.com",
   "status"=>"succeeded",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:23:03.597642Z",
   "id"=>"CR4NONsvrPh7LPXKJfGdLC2W",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>nil,
   "links"=>
    {"order"=>nil,
     "customer"=>"CU4JzSODRNDJ6Fa3tUIIQ4Ug",
     "destination"=>"BA4LhORHuuUNvq50PKukbR6S"},
   "currency"=>"USD",
   "href"=>"/credits/CR4NONsvrPh7LPXKJfGdLC2W",
   "amount"=>5000},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "destination"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
