% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x10eba5748
  @attributes=
   {"meta"=>{},
    "links"=>
     {"order"=>nil,
      "destination"=>"BA7BTgSWZd7CDPnsBHwle62s",
      "customer"=>"CU7zEe4gULEuyvdraVEnKa1Q"},
    "amount"=>5000,
    "status"=>"succeeded",
    "updated_at"=>"2014-01-16T20:01:26.745085Z",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"example.com",
    "id"=>"CR7DsYbhMq51iZ1eOZK3aUia",
    "currency"=>"USD",
    "transaction_number"=>"CR802-481-8273",
    "href"=>"/credits/CR7DsYbhMq51iZ1eOZK3aUia",
    "description"=>nil,
    "created_at"=>"2014-01-16T20:01:25.849511Z",
    "failure_reason"=>nil},
  @hyperlinks=
   {"order"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "destination"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "events"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "reversals"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>]

% endif
