% if mode == 'definition':
Balanced::Credit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

credit = Balanced::Credit.fetch('/credits/CR7DsYbhMq51iZ1eOZK3aUia')
% elif mode == 'response':
#<Balanced::Credit:0x10869cce8
 @attributes=
  {"created_at"=>"2014-01-16T20:01:25.849511Z",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>nil,
   "transaction_number"=>"CR802-481-8273",
   "status"=>"succeeded",
   "links"=>
    {"customer"=>"CU7zEe4gULEuyvdraVEnKa1Q",
     "destination"=>"BA7BTgSWZd7CDPnsBHwle62s",
     "order"=>nil},
   "failure_reason_code"=>nil,
   "id"=>"CR7DsYbhMq51iZ1eOZK3aUia",
   "href"=>"/credits/CR7DsYbhMq51iZ1eOZK3aUia",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:01:26.745085Z",
   "currency"=>"USD",
   "appears_on_statement_as"=>"example.com"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "reversals"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
